# ghcli-utils

Decidedly unclever scripts that aren't gh-extensions

These are just some scripts that I use (rarely) that aren't clever enough or 'high use' enough to be actual github cli extensions. I treat it as a bit of a scratch pad to toy around with the github cli.

> Unlike git, github cli doesn't just magically look for anything that has a `gh` prefix and treat it as an extension. So, stick this repo in your path and execute them the old fashioned way or make a gh alias for it
>
> - `gh alias set --shell create-pr '/path/to/gh-create-pr $@'`, then it's a case of `gh create-pr` as you like.

```console
Ubuntu-22.04 ~
bsh ❯ gh-wf-pr-approval
Setting quotidian-ennui/ghcli-utils
Setting quotidian-ennui/gh-rate-limit
...
bsh ❯
```

## Bonus Chatter

I use `gh-merge-train` quite a lot now, so much so, it might get promoted as an actual gh-extension. This is how I use it, of course the environment variable is set via `direnv` since the actual label depends on the project in question.

```console
gh alias set --shell merge-train 'gh-merge-train $@'
export GH_MERGE_TRAIN_BOT_LABEL="dependency_reviewed"
gh merge-train 1030 1031 1032
```

> I do wish I had an accurate way of waiting until the first check has started, I have had some situations where I've "merged" too early, before any checks have executed after rebasing.

