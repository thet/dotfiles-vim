# coding=utf-8
# Usage:
#   mkdir -p .vim; ./bin/instance run ../pyjedi.py > .vim/coc-settings.json
# Or:
#   mkdir -p .vim; ./bin/zopepy ../pyjedi.py > .vim/coc-settings.json

import json
import subprocess

cmd = ["pip", "list", "-v", "--format", "json"]
result = subprocess.run(cmd, stdout=subprocess.PIPE)
result = result.stdout.decode("utf-8")
result = json.loads(result)

# Compile the list of paths.
# If a location ends with ".egg", do not append the name.
paths = [
    f'{it["location"]}/{it["name"]}'
    if it["location"][-4:] != ".egg"
    else it["location"]
    for it in result
]

# import os
# import sys
# omelette_paths = []
# if os.path.exists(os.path.join(os.getcwd(), "parts", "omelette")):
#     omelette_paths.append(os.path.join(os.getcwd(), "parts", "omelette"))
#
# paths = filter(None, set(paths)) + omelette_paths

CONF = {
    "jedi.workspace.extraPaths": sorted(paths),
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

print(json.dumps(CONF, indent=2))
