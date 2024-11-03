#!/bin/bash

uptime -p | sed 's/up //g; s/,//g; s/ days/d/g; s/ day/d/g; s/ hours/h/g; s/ hour/h/g; s/ minutes/m/g; s/ minute/m/g'
