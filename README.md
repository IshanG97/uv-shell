# uv-shell

The devs at [uv](https://github.com/astral-sh/uv) did an amazing job, so I wanted to make it even faster to setup!

```
pip install uv

chmod +x setup-uv.sh

./setup-uv.sh
```

Have fun using the (currently) fastest package manager available for Python!
NOTE: this replaces `pip` with `uv pip` once you are within the venv, but it won't affect anything outside
   
Example usage:
   
```
# Create or activate a virtual environment
uvshell

# Install packages (uses uv add for dependency tracking)
pip install fastapi requests

# Remove packages (uses uv remove)
pip uninstall requests

# Create requirements.txt snapshot
uvfreeze
```

Key features:

- `uvshell` combines `uv venv` and `source .venv/bin/activate`
- `pip install` automatically uses `uv add` for better dependency tracking
- `pip uninstall` uses uv remove to keep dependencies in sync
- `uvfreeze` creates a `requirements.txt` snapshot
- All other `pip` commands use `uv pip` behind the scenes
