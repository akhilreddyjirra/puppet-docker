## For Dev branch
Clone the dev branch 

Change the name of the folder `puppet-docker` --> `dockerinstall`

Crete a file site.pp 

` node 'puppet-agent-1', 'puppet-server' {`

  `include dockerinstall`

`} `

apply the module 

`puppet apply site.pp`
