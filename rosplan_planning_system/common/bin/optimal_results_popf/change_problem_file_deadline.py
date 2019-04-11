#!/usr/bin/env python3

import sys
import os



min_list = []
for filename in os.listdir(os.getcwd()):
    costs= []
    f = open(filename, 'r')
    for line in f:
        #print(line)
        if line.find('All goal deadlines') >0 and filename != 'change_problem_file_deadline.py' :
            vals= float(line.split(" ")[-1][:-1])
            #print("Val is:",vals)
            costs.append(vals)
        
            #print(costs)
    #print(costs)
    #print(optimal_cost)
    if len(costs) >0:
        optimal_cost= min(costs)
        w= open(filename, 'w')
        w.write('Cost: ' + str(optimal_cost))
print(len(min_list))       
            
            
            

