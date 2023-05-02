#!/bin/sh
# de-duplicate $PATH
# ... this is definitely an overkill
# ... but why not? just for fun!
# ... see: https://stackoverflow.com/a/6765391

PATH="$(python -c "import os; paths = {}; print(*[ paths.setdefault(x, x) for x in os.get_exec_path() if x not in paths ], sep=':')")"

export PATH
