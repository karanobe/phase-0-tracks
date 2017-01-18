# key design philosophies of the Linux operating system

1. Small is Beautiful
2. Each Program Does One Thing Well
3. Prototype as Soon as Possible
4. Choose Portability Over Efficiency
5. Store Data in Flat Text Files
6. Use Software Leverage
7. Use Shell Scripts to Increase Leverage and Portability
8. Avoid Captive User Interfaces
9. Make Every Program a Filter

# In your own words, what is a VPS (virtual private server)? 
# What, according to your research, are the advantages of using a VPS?

A virtual private server is essentially a virtual computer that functions the same
way as a computer. It can download and run software like a regular computer, and is used 
mainly to control a web server. Advantages of a VPS include increased stability and 
dependability when it comes to basic web hosting requirements, better control since you
will gain complete root accessibility to your environment, and efficient use of resources since
the carbon footprint is minimized.

# Why is it considered a bad idea to run programs as the root user on a Linux system?

A root user has complete administrative access to the server. Similar to working in a 
master branch on a git repository. Thus, if you accidentally break something or delete
something, the entire server is effected. Thus, its a good idea to make changes as a user
since that will limit your abilities.