if has('python')
py << EOF

# Load pythonpaths script to load extra python paths into vim's python interpreter instance.
# For use with jedi-vim to find all modules
# The ``pythonpaths`` script can be created with buildout
# See: https://github.com/davidhalter/jedi-vim/issues/31
#      http://stackoverflow.com/questions/67631/how-to-import-a-module-given-the-full-path

# Create the pythonpaths script via buildout's zc.recipe.egg with this config:
#     [pythonpaths]
#     recipe = zc.recipe.egg
#     eggs = ${instance:eggs}  # List of your eggs. ${instance:eggs} is common for Plone.
#     interpreter = pythonpaths

import os
import ast


def _set_pathfile(pathfile):
    if os.path.isfile(pathfile):
        return pathfile
    return None


pathfile = _set_pathfile(os.path.join(os.getcwd(), 'bin', 'test')) or\
    _set_pathfile(os.path.join(os.getcwd(), 'bin', 'gunicorn')) or\
    _set_pathfile(os.path.join(os.getcwd(), 'bin', 'instance')) or\
    _set_pathfile(os.path.join(os.getcwd(), 'bin', 'pythonpaths'))


if pathfile:

    code = ast.parse(open(pathfile).read())

    # Only get the sys.path modification part from the zc.recipe.egg
    # interpreter script
    code.body = code.body[:2]

    # Tentatively make sure, first is an sys import, second the sys.path
    # assignment
    assert(code.body[0].__class__.__name__ == 'Import')
    assert(code.body[1].__class__.__name__ == 'Assign')

    # Eval and import all the modules into our Python path.
    eval(compile(code, '', 'exec'))

EOF
endif
