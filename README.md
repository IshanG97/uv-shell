# uv-shell
The devs at [uv](https://github.com/astral-sh/uv) did an amazing job, so I wanted to make it even faster to setup!

1. Save `.uv-shell` to `~/.uv-shell`
2. Add the code in `uv-profile` to your profile e.g. `.profile`, `.zshrc`
3. Have fun! Example usage:
   
`uvshell`     # Activates or creates venv - combines `uv venv` and source `.venv/bin/activate`

`pip install fastapi`  # Install package - NOTE: replaces `pip` with `uv pip` for simplicity

`uvfreeze`    # Basically does `uv pip freeze > requirements.txt`
