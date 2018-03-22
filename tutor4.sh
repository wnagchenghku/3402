if grep -q 'env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory")[[:blank:]]*;' './Customer.java'; then
    :
else
    echo "Customer.java: env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");"
fi

if grep -q 'env.put(Context.SECURITY_CREDENTIALS, "secret")[[:blank:]]*;' './Customer.java'; then
    :
else
    echo "Customer.java: env.put(Context.SECURITY_CREDENTIALS, "secret");"
fi

if grep -q 'Context ctx = new InitialContext(env);' './Customer.java'; then
    :
else
    echo "Customer.java: Context ctx = new InitialContext(env);"
fi

if grep -q 'Hashtable<String, String> env = new Hashtable<String,[[:blank:]]*String>()[[:blank:]]*;' './Customer.java'; then
    :
else
    echo "Customer.java: Hashtable<String, String> env = new Hashtable<String, String>() ;"
fi

if grep -q '//[[:blank:]]*ctx.rebind("cn=TicketMachine", app);' './TicketServer.java'; then
    :
else
    echo "TicketServer.java: // ctx.rebind("cn=TicketMachine", app);"
fi

if grep -q 'String rmiurl = "rmi://localhost/TicketMachine";' './TicketServer.java'; then
    :
else
    echo "TicketServer.java: String rmiurl = "rmi://localhost/TicketMachine";"
fi

if grep -q 'Reference ref = new Reference[[:blank:]]*("TicketMachine", new StringRefAddr("URL", rmiurl));' './TicketServer.java'; then
    :
else
    echo "TicketServer.java: Reference ref = new Reference("TicketMachine", new StringRefAddr("URL", rmiurl));"
fi

if grep -q 'ctx.rebind("cn=TicketMachine", ref);' './TicketServer.java'; then
    :
else
    echo "TicketServer.java: ctx.rebind("cn=TicketMachine", ref);"
fi

if grep -q 'ctx.rebind(rmiurl, app);' './TicketServer.java'; then
    :
else
    echo "TicketServer.java: ctx.rebind(rmiurl, app);"
fi
