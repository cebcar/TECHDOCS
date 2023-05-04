# GitHub

## Tool GitHub
WebApp @ https://github.com<br/>
*provides hosting for software development and version control using Git*<br/>
**Documentation**: %
### GitHub **Configuration**: %
### GitHub **Customization &amp; Automation**: %
### GitHub **Shortcuts**: %

## Using GitHub

### Connect to GitHub via SSH
NOTE: GitHub advice is to use ONLY the SSH Agent provided with macOS.

Generate SSH Keys
- generate keys
```shell
ssh-keygen -t ed25519 -C "carolclark@cebcar"
```
- save at ~/.ssh/id_ed25519; supply passphrase

- verify connection via SSH Agent
```shell
eval "$(ssh-agent -s)
```

Authenticate with GitHub via SSH
- create file ~/.ssh/config
  - copy content from GitHub SSH
  - currently:<br>
```plaintext
    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile: ~/.ssh/id_ed25519
```
- add GitHub SSH private key to SSH Agent
```
ssh --add -K ~/.ssh/id_ed25519
```
- copy key to pasteboard
```
pbcopy < ~/.ssh/id_ed25519.pub
```
- add SSH private key to GitHub

  - Settings : Developer : SSH &amp; GPG Keys : New SSH Key; paste in key<br><br>

- verify connection
  - check count of existing known_hosts, if any<br><br>
  ```
  ssh -T git@github.com
  ```
  - continue if displayed key matches<br><br>
- verify: additional known_host at ~/.ssh

### Create New Repository
GitHub : ‘cebcar’ : New Repository
- supply repo Name and Description
- make repository “Public”
- add license, normally MIT <br><br>

## Repo Settings
*Settings Icon at right of project's menu bar*

### > General

### Features
  [-] Wikis; *expect editing from within wiki; not version controlled*
  [+] Issues
  [-] Sponsorships
  [-] Preserve this repository; *intended for long-term preservation of shared open-source code*
  [o] Discussions; *depending on whether there are collaborators*
  [+] Projects

### Pull Requests
#### Context:
According to [W3Docs: How to rebase a git branch](https://www.w3docs.com/snippets/git/how-to-rebase-git-branch.html)
> Merging preserves history whereas rebasing rewrites it.

We want to see the branch organization in the commit history.

#### Merge:
  [+] Allow merge commits
  [-] Allow squash merging
  [-] Allow rebase merging (by definition, forces a single line of development with no branch organization)

  [+] Always suggest updatinßg pull request branches
  [+] Automatically delete head branches.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*branches can still be restored* 

## > Branches
Default Branch: main

## Attach Local Repo

create directory ~/NAME
```shell
cd ~/NAME
git init
cp ~/LICENSE ~/NAME/LICENSE # MIT license with updated copyright holder
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin git@github.com:cebcar/NAME.git
git push --set-upstream origin main
```


- .gitignore
  - do not ignore .gitignore
    > !.gitignore
  - ignore folder .cebcar
    > .cebcar
  - [.gitignore](https://cebcar.w3spaces.com/TechDocs/tools/Git.md#gitignore): add content for macOS

- .gitconfig
TODO: correct configuration is to have exactly one of these at ~
*required to connect to GitHub*
```
[user]
	name = Carol Clark
	email = 3742721+carolclark@users.noreply.github.com
[init]
	defaultBranch = main
[diff]
	tool = vimdiff
[merge]
	tool = vimdiff
[pull]
	rebase = false
[difftool]
	prompt = true
```

## > Milestones

### access milestones
- on repository page, click "Issues" or "Pull Requests"; select Milestones next to Search field

### filter by milestone
`milestone:`&lt;name&gt;

### OAuth Tokens for GitHub
- OAuth Tokens
### OAuth Tokens

*from [Access Tokens @ oauth.com](https://www.oauth.com/oauth2-servers/access-tokens/)*
``` text
Access tokens are the thing that applications use to make API requests on behalf of a user.
The access token represents the authorization of a specific application to access specific parts of a user’s data.

Access tokens must be kept confidential in transit and in storage.
```

- GitHub Personal Access Tokens
  - type of OAuth token for GitHub
  - used for:
    - [access for products](https://docs.github.com/en/developers/apps/about-apps#about-oauth-apps), including JetBrains apps, to our repositories, and
    - interaction with GitHub via automated scripts; see [Git automation with OAuth tokens](https://docs.github.com/en/github/extending-github/git-automation-with-oauth-tokens)
<br>
  - Personal Access Token Permissions
    - *recommended permissions based on .gif at [create a personal access token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token) and experience with JetBrains projects*
      - for admin access: repo; admin:repo-hook; delete repo
      - for read access: repo; read:repo-hook
      - for Application project access: repo; admin:repo-hook; gist; read:org
<br>
  -  Create GitHub Personal Access Token (indent)
    - references:
      - GitHub [create a personal access token](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)
      - from [GitHub Developer Settings](#access-github-developer-settings): Settings > Developer Settings > Personal Access Tokens
    - set [Personal Access Token Permissions](#personal-access-token-permissions)
    - Generate New Token

### Tasks
#### Access GitHub Repository Settings
- from repo button bar: 'Settings'

#### Access GitHub Developer Settings
- from Developer avatar at top right of any GitHub screen: Settings > Developer settings

### Issues
- reference an issue from a commit without closing, ...: #issuenbr

- Delete an Issue
  - ***Warning***: the only reason we now know for deleting a GitHub issue is to remove an unwanted issue from a ZenHub Roadmap

  - reference: [ZenHub: Deleting GitHub Issues or ZenHub Epics](https://help.zenhub.com/support/solutions/articles/43000480335-deleting-github-issues-or-zenhub-epics)

  - from GitHub
    - to enable/disable issue deletion:
      - under personal icon at far top right
        - select 'Your Organizations' and switch to cebcar account
      - left sidebar: select Member Privileges
      - toggle "Allow members to delete issues for this organization"
    - so:
      - enable issue deletion
      - display the issue's screen
      - select trashcan next to "Delete Issue", near bottom of left panel
      - disable issue deletion

<button onclick="window.print()">Print Button</button>
