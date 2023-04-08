# netology-nginx-teapot
A simple nginx config as a model app for devops-netology qualification project
* serves `GET /ping` to determine liveness
* serves code 418 `I'm a Teapot` for all other operations
  * Warning: does not implement the full RFC 2324 spec, though the resulting entity body IS short and stout. 
