Input the character missing value as a period instead of a blank                                            
                                                                                                            
github                                                                                                      
https://tinyurl.com/y3s2scj5                                                                                
https://github.com/rogerjdeangelis/utl-input-the-character-missing-value-as-a-period-instead-of-a-blank     
                                                                                                            
StackOverFlow                                                                                               
https://tinyurl.com/y5b3kdev                                                                                
https://stackoverflow.com/questions/54908421/read-a-point-char-with-sas                                     
                                                                                                            
Tom profile                                                                                                 
https://stackoverflow.com/users/4965549/tom                                                                 
                                                                                                            
I did not know how to input the '.' as '.'                                                                  
                                                                                                            
Problem: Input the character '.' as a '.' not a blanl ' '                                                   
                                                                                                            
Use the $char informat,                                                                                     
                                                                                                            
PROBLEM:  When I input the character columns                                                                
--------------------------------------------                                                                
                                                                                                            
data PROBLEM ;                                                                                              
  input id c1$ c2$ c3$;                                                                                     
cards4;                                                                                                     
1 a b c                                                                                                     
2 . . 3                                                                                                     
;;;;                                                                                                        
run;quit;                                                                                                   
                                                                                                            
I GET                                                                                                       
-----                                                                                                       
                                                                                                            
WORK.PROBLEM total obs=2                                                                                    
                                                                                                            
 ID    C1    C2    C3                                                                                       
                                                                                                            
  1    a     b     c                                                                                        
  2                3                                                                                        
                                                                                                            
BUT I WANT                                                                                                  
----------                                                                                                  
                                                                                                            
WORK.WANT total obs=2                                                                                       
                                                                                                            
 ID    C1    C2    C3                                                                                       
                                                                                                            
  1    a     b     c                                                                                        
  2          .     3    ===> note the ',' in c2 column                                                      
                                                                                                            
SOLUTION                                                                                                    
========                                                                                                    
                                                                                                            
data want ;                                                                                                 
  input id c1$ c2 $char1. c3$;                                                                              
cards4;                                                                                                     
1 a b c                                                                                                     
2 . . 3                                                                                                     
;;;;                                                                                                        
run;quit;                                                                                                   
                                                                                                            
                                                                                                            
                                                                                                            
