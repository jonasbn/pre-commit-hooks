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

Do note that [pre-commit], does have a similar hook (`no-commit-to-branch`), which I discovered from the article "[Chickity-check yo self before you wreck yo self!](https://dev.to/apoclyps/chickity-check-yo-self-before-you-wreck-yo-self-44ib)" on dev.to.

So I recommend using [that hook](https://github.com/pre-commit/pre-commit-hooks#no-commit-to-branch) over my own _very basic_ implementation.

### spellcheck

This hooks checks spelling using `pyspelling`

To enable add the following to your: `.pre-commit-config.yaml`

```yaml
-   repo: https://github.com/jonasbn/pre-commit-hooks
    rev: v0.4.0
    hooks:
    -   id: spellcheck
```

For configuration please see [the GitHub Action][ghaction].

## RESOURCES AND REFERENCES

- [The pre-commit website][pre-commit]
- [List of supported and available hooks](https://pre-commit.com/hooks.html)
- [StackOverflow: "Prevent commits in master branch"](https://stackoverflow.com/questions/40462111/prevent-commits-in-master-branch)
- [Git Documentation: "git-commit - Record changes to the repository"](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt--n)

## LICENSE

Please see the separate license file

[ghaction]: https://github.com/rojopolis/spellcheck-github-actions
[pre-commit]: https://pre-commit.com/
