# pre-commit-hooks

An experiment with Git pre-commit hooks

## Hooks

### prohibit-commit-main

This hook prohibits for committing directly to `main` and `master` branches.

```bash
$ git commit CHANGELOG.md
Committing directly to main/master branch is prohibited, use --no-verify / -n if you really insist
```

The hook can be bypassed using the command line argument `-n`

```bash
$ git commit -n -m "This stuff really need to be commited NOW"
```

## RESOURCES AND REFERENCES

- [The pre-commit website](https://pre-commit.com/)
- [List of supported and available hooks](https://pre-commit.com/hooks.html)
- [StackOverflow: "Prevent commits in master branch"](https://stackoverflow.com/questions/40462111/prevent-commits-in-master-branch)
- [Git Documentation: "git-commit - Record changes to the repository"](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt--n)

## LICENSE

Please see the separate license file
