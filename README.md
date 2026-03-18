# ghcli-utils

Decidedly unclever scripts that aren't worth being promoted to being gh-extensions. Either they are one-shot things like `gh-wf-pr-approval` or I think they don't have any wider use. I treat it as a bit of a scratch pad to toy around with the github cli.

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

