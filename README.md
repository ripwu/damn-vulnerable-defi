# Setup

## Trouble-shooting

1. specify node v12.20.0:

``` zsh
# ripwu @ rips-MacBook-Pro in ~/workspace/externals/damn-vulnerable-defi on git:master o [10:44:32] C:130
$ nvm use v12.20.0
# ripwu @ rips-MacBook-Pro in ~/workspace/externals/damn-vulnerable-defi on git:master o [10:44:32] C:130
$ nvm list
->     v12.20.0
       v14.17.0
```

2. install dependencies and ignore keccak@1.4.0 failing:

``` zsh
# ripwu @ rips-MacBook-Pro in ~/workspace/externals/damn-vulnerable-defi on git:master o [10:44:32] C:130
$ npm install

...

> keccak@1.4.0 install /Users/ripwu/workspace/externals/damn-vulnerable-defi/node_modules/ganache-core/node_modules/eth-json-rpc-middleware/node_modules/ethereumjs-vm/node_modules/ethereumjs-block/node_modules/keccak
> npm run rebuild || echo "Keccak bindings compilation fail. Pure JS implementation will be used."

5 errors generated.
npm ERR! Failed at the keccak@1.4.0 rebuild script.
Keccak bindings compilation fail. Pure JS implementation will be used.

...

added 2541 packages from 1574 contributors in 472.45s

54 packages are looking for funding
  run `npm fund` for details
```

3. remove git hooks

``` zsh
$ git commit -m "MessageForCommit"
gnot found: husky-run
Can't find Husky, skipping pre-commit hook
You can reinstall it using 'npm install husky --save-dev' or delete this hook
ginot found: husky-run
Can't find Husky, skipping prepare-commit-msg hook
You can reinstall it using 'npm install husky --save-dev' or delete this hook
ginot found: husky-run
Can't find Husky, skipping commit-msg hook
You can reinstall it using 'npm install husky --save-dev' or delete this hook
gitnot found: husky-run
Can't find Husky, skipping post-commit hook
You can reinstall it using 'npm install husky --save-dev' or delete this hook
[master a2eefc8] MessageForCommit
 2 files changed, 50 insertions(+), 5 deletions(-)
```

``` zsh
# ripwu @ rips-MacBook-Pro in ~/workspace/externals/damn-vulnerable-defi on git:master o [11:08:06] C:64
$ rm -rf .git/hooks
```

# damn-vulnerable-defi

![](cover.png)

**A set of challenges to hack implementations of DeFi in Ethereum.** Featuring flash loans, oracles, governance, NFTs, lending pools, and more!

Created by [@tinchoabbate](https://twitter.com/tinchoabbate) at OpenZeppelin

## Play

Visit [damnvulnerabledefi.xyz](https://damnvulnerabledefi.xyz)!

## Troubleshooting

- Some users have reported [issues](https://github.com/OpenZeppelin/damn-vulnerable-defi/issues/1) with specific versions of node. I have succesfully installed all dependencies, and executed all challenges, with version `v12.20.0`. If you're using a different version of node and are having problems during the setup, try switching to version `v12.20.0`.
- Some users have reported [issues](https://github.com/OpenZeppelin/damn-vulnerable-defi/pull/4) with the timeout set in the `package.json` file for "The Rewarder" challenge. If you're having trouble executing your exploit for this challenge, try increasing the timeout.

## Disclaimer

All Solidity code, practices and patterns in this repository are DAMN VULNERABLE and for educational purposes only.

DO NOT USE IN PRODUCTION.
