#!/bin/bash
Sudo cp /var/named/example.org.db /var/named/mcwalter.org.db 
Sudo sed -i 's/example.org/mcwalter.org/g' mcwalter.org.db
Sudo cp /var/named/example.org.rev /var/named/mcwalter.org.rev
Sudo sed -i 's/example.org/mcwalter.org/g' mcwalter.org.rev
Sudo cp /var/named/named.conf /var/named/mcwalter.org.conf
Sudo sed -i 's/example.org/mcwalter.org/g' mcwalter.org.conf