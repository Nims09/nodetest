#!/bin/bash
#
# Script to import the listens.csv into our mongoDB

mongoimport --db db --collection albums --fields "play_counts","album_name" --type csv --file listens.csv