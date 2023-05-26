# Report Generator

## README

- First version of this lacked the redirect handling in `fetch_url()` and the
  try/except for api.ipify.org. I added for the following reasons:
- During testing, I encountered a temporary issue connecting to api.ipify.org
  so I thought it would be a good idea to add an alternative source in case
  that service continued to be flakey
- I explanded `fetch_url()` to include redirect following because the
  github.com URL for the CSV redirects to github's CDN. Since I was adding
  redirect following capabilities, it also prompted me to consider a redirect
  loop and put some code in there to handle that possibility
- RE:`fetch_url()` implementation. In real life, I would now start to think
  about adding the `requests` library as a dependency because the complexity
  has started to grow. For our existing report requirements, I would probably
  leave it as is but we're right on the edge of enough complexity that it would
  be worth adding a dependency instead of maintaining my own http.client
  implementation

## Quickstart

1. `git clone https://github.com/chroto/probable-disco.git`
2. `cd probable-disco`
3. `make run`
4. `make report`

