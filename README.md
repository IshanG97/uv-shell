# uv-shell
The devs at [uv](https://github.com/astral-sh/uv) did an amazing job, so I wanted to make it even faster to setup!

1. Save `.uv-shell` to `~/.uv-shell`
2. Add the code in `uv-profile` to your profile e.g. `.profile`, `.zshrc`
3. Have fun! Example usage:
   
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