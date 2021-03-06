# pre-commit-hooks

An experiment with Git pre-commit hooks

## Hooks

### prohibit-commit-main

This hook prohibits for committing directly to `main` and `master` branches.

```text
$ git commit CHANGELOG.md
Committing directly to main/master branch is prohibited, use --no-verify / -n if you really insist
```

The hook can be bypassed using the command line argument `-n`

```bash
$ git commit -n -m "This stuff really need to be commited NOW"
```

Do note that [pre-commit], does have a similar hook (`no-commit-to-branch`), which I discovered from the article "[Chickity-check yo self before you wreck yo self!](https://dev.to/apoclyps/chickity-check-yo-self-before-you-wreck-yo-self-44ib)" on dev.to.

So I recommend using [that hook](https://github.com/pre-commit/pre-commit-hooks#no-commit-to-branch) over my own _very basic_ implementation.

### spellcheck

This hooks checks spelling using `pyspelling`

To enable add the following to your: `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/jonasbn/pre-commit-hooks
    rev: v0.5.0
    hooks:
    -   id: spellcheck
```

For configuration please see [the GitHub Action][ghaction].

## DIAGNOSTICS

### exit code: 2

If you observe this error:

```text
: not found ... /.cache/pre-commit/repocwpzg79t/spellcheck.sh: 2:
: not found ... /.cache/pre-commit/repocwpzg79t/spellcheck.sh: 4:
... /.cache/pre-commit/repocwpzg79t/spellcheck.sh: 7: Syntax error: "elif" unexpected (expecting "then")
```

It is due to the spellcheck shell script being checked out with `CRLF` line-endings.

`dos2unix` can fix this, but it is not a sustainable solution since new it would have to be re-done on every update/reinstallation.

## RESOURCES AND REFERENCES

- [The pre-commit website][pre-commit]
- [List of supported and available hooks](https://pre-commit.com/hooks.html)
- [StackOverflow: "Prevent commits in master branch"](https://stackoverflow.com/questions/40462111/prevent-commits-in-master-branch)
- [Git Documentation: "git-commit - Record changes to the repository"](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt--n)

## LICENSE

Please see the separate license file

[ghaction]: https://github.com/rojopolis/spellcheck-github-actions
[pre-commit]: https://pre-commit.com/
