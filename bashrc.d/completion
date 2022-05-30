##                                                                              
# Section: BASH-completion                                                      
#                                                                               
# Source completion for GitHub commandline client                               
#                                                                               
[[ $(which gh) ]] && eval "$(gh completion -s bash)"                             
                                                                                
#                                                                               
# Source completion for AWS commandline client                                  
#                                                                               
[[ $(which aws_completer) ]] && complete -C $(which aws_completer) aws            
                                                                                
#                                                                               
# Source completion for package installer for Python                            
#                                                                               
[[ $(which pip) ]] && eval "$(pip completion --bash)" 

