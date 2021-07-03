# Change log for pre-commit hook repository

## 0.4.0 2021-07-03 Feature release

- Added initial version of pre-commit hook for checking spelling using `pyspelling`

## 0.3.0 2021-06-13 Bug fix release

- Removed experimental feature with `stages` introduced in 0.2.0

## 0.2.3 2021-06-13 Bug fix release

- Bad naming of `pass-filenames`, it should read `pass_filenames`, addressed in this release

## 0.2.2 2021-06-13 Bug fix release

- Introduced an error in 0.3.0, with the specification of `pass-filenames`, addressed in this release

## 0.2.1 2021-06-13 Bug fix release

- Introduced an error in 0.3.0, with the specification of stages, addressed in this release

## 0.2.0 2021-06-13 Maintenance release

- Addressed some issues pointed out by [shellcheck](https://www.shellcheck.net/)

- Added experimental use of `stages` in attempt to isolate to a more contained evaluation

- Added experimental use of `pass-filenames` in attempt to isolate to a more contained evaluation

## 0.1.1 2021-06-11 Bug fix release

- First tests with external repository demonstrated a bug, fixed in this release

## 0.1.0 2021-06-11 Initial release

- Basic pre-commit hooks for prohibiting committing directly to master or main
