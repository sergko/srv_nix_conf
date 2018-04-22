#!/bin/bash
#systemctl fix
sudo systemctl unmask nginx.service
systemctl enable nginx
systemctl start nginx
