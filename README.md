# yaml-node-hello-world

Test case
```
Summary: Check git-clone with credentials (github/bitbucket/stash)
```

Create post request to:  https://g-staging.codefresh.io/api/workflow/codefresh-io/yaml-node-hello-world/file

Header:
```
X-Access-Token: your token
Content-Type: application/json
```

Body:
```json
{
   "branch":"test-case-29",
   "variables":{
       "github_user":"user",
       "github_password": "pwd",
       "stash_user":"user",
       "stash_password":"pwd",
       "bb_user":"user",
       "bb_password": "pwd"
   }
}
```
