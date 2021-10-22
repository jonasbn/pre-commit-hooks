# Change log for the jonasbn/pre-commit hooks repository

## 0.6.0 2021-10-22 Maintenance release

- Added diagnostics section to the documentation after running into issues with shell and WSL
- Added .gitattributes to _force_ the bash script `spellcheck.sh` to have lines terminated with `LF` over `CRLF`
  My Git configuration of `autocrlf` set to `true` does not influence the update of the hooks

## 0.5.0 2021-08-15 Feature release

- Improved handling of `pyspelling` configurations, to these match the use in the GitHub Action
  [spellcheck documentation](https://github.com/rojopolis/spellcheck-github-actions)

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
