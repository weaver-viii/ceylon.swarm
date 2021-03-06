"""Ceylon CLI plugin for WildFly Sarm.

   # Usage

   Install the plugin from the command-line:

   ~~~sh
   $ ceylon plugin install ceylon.swarm/1.3.0
   ~~~

   Write your application for WildFly Swarm by importing the Java EE API module in your Ceylon module.ceylon:

       native("jvm")
       module my.module "1" {
         import maven:"javax:javaee-api" "7.0";
       }

   Then write your application, and run the swarm plugin from the command line:

   ~~~sh
   ceylon swarm --provided-module javax:javaee-api my.module/1
   ~~~
"""
native("jvm")
module ceylon.swarm "1.3.0" {
  import java.base "8";
  shared import com.redhat.ceylon.compiler.java "1.3.0";
  import maven:"org.wildfly.swarm:swarmtool" "2016.9";
}
