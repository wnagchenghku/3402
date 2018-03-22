if grep -q '//[[:blank:]]*ctx.rebind("cn=TicketMachine", app);' './TicketServer.java'; then
    :
else
    echo "// ctx.rebind("cn=TicketMachine", app);"
fi

if grep -q 'String rmiurl = "rmi://localhost/TicketMachine";' './TicketServer.java'; then
    :
else
    echo "String rmiurl = "rmi://localhost/TicketMachine";"
fi

if grep -q 'Reference ref = new Reference("TicketMachine", new StringRefAddr("URL", rmiurl));' './TicketServer.java'; then
    :
else
    echo "Reference ref = new Reference("TicketMachine", new StringRefAddr("URL", rmiurl));"
fi

if grep -q 'ctx.rebind("cn=TicketMachine", ref);' './TicketServer.java'; then
    :
else
    echo "ctx.rebind("cn=TicketMachine", ref);"
fi

if grep -q 'ctx.rebind(rmiurl, app);' './TicketServer.java'; then
    :
else
    echo "ctx.rebind(rmiurl, app);"
fi
