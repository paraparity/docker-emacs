# Build
```
docker build . -t this:one && docker run --rm -it this:one
```

# Load Profile Capture
```
M-x profiler-find-profile RET prof-cap
```

# Reproducing the Bug
The `some.ledger` file will automatically open. Simply enter the following in Emacs:
```
C-e
RET
```

That's it. Your process should now be non-responsive.