set shell := ["bash", "-cu"]
set windows-shell := ["pwsh", "-Command"]

oxfmt := "pnpm exec oxfmt"

# Default action
_:
    just --list -u

# Install
i:
    pnpm install

# Format code
fmt:
    {{oxfmt}}

# Check code
check:
    just fmt

# Clean builds (Linux)
clean-linux:

# Clean builds (macOS)
clean-macos:
    just clean-linux

# Clean builds (Windows)
clean-windows:

# Clean builds
clean:
    just clean-{{os()}}

# Clean everything (Linux)
clean-all-linux:
    just clean

    rm -rf ./node_modules

# Clean everything (macOS)
clean-all-macos:
    just clean-all-linux

# Clean everything (Windows)
clean-all-windows:
    just clean

    Remove-Item -Recurse -Force ./node_modules

# Clean everything
clean-all:
    just clean-all-{{os()}}
