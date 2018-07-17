Role Name
=========
sensu_client

This ansible Role will install Sensu (sensu-client) and it will configure below checks for that client. 

    - cpu-checks
    - disk-checks
    - memory-checks 
    - process-checks
    - load-checks
    - vmstats 
    - nginx
    - stackstorm

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: localhost
      roles:
         - role: sensu_client
