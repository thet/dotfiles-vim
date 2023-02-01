# coding=utf-8
# Usage:
#   mkdir -p .vim; ./bin/instance run ../pyjedi.py > .vim/coc-settings.json
# Or:
#   mkdir -p .vim; ./bin/zopepy ../pyjedi.py > .vim/coc-settings.json

import sys
from json import dumps

CONF = {
    "jedi.workspace.extraPaths": sorted(filter(None, set(sys.path))),
    "jedi.workspace.symbols.ignoreFolders": [
        ".nox",
        ".tox",
        ".venv",
        "__pycache__",
        "bin",
        "develop-eggs",
        "include",
        "lib",
        "lib64",
        "local",
        "node_modules",
        "parts",
        "var",
        "venv",
    ],
}

print(dumps(CONF, indent=2))
