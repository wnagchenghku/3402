if grep -q 'count[[:blank:]]*(String message) throws RemoteException' './WordCount.java'; then
    :
else
    echo "WordCount"
fi

if grep -q 'import java.rmi.\*;' './WordCounter.java'; then
    :
else
    echo "WordCounter: Import RMI packages"
fi
if grep -q 'import java.rmi.server.\*;' './WordCounter.java'; then
    :
else
    echo "WordCounter: Import RMI packages"
fi

if grep -q 'class WordCounter extends UnicastRemoteObject implements WordCount' './WordCounter.java'; then
    :
else
    echo "WordCounter: Extends UnicastRemoteObject, Implements WordCount interface"
fi

if grep -q 'WordCounter() throws RemoteException' './WordCounter.java'; then
    :
else
    echo "WordCounter: constructor WordCounter() and count() should throw RemoteException"
fi
if grep -q 'count(String message) throws RemoteException' './WordCounter.java'; then
    :
else
    echo "WordCounter: constructor WordCounter() and count() should throw RemoteException"
fi

if grep -q 'System.setSecurityManager(new SecurityManager());' './WordCounter.java'; then
    :
else
    echo "WordCounter: Register the service in main() "
fi
if grep -q 'Naming.rebind("WordCounter",[[:blank:]]*app);' './WordCounter.java'; then # ignore space
    :
else
    echo "WordCounter: Register the service in main() "
fi

if grep -q 'import java.rmi.registry.\*;' './MessageBox.java'; then
    :
else
    echo "MessageBox: import java.rmi.registry"
fi

if grep -q 'args\[0]' './MessageBox.java'; then
    :
else
    echo "MessageBox: args[0]"
fi
if grep -q 'public MessageBox(String host)[[:blank:]]*{' './MessageBox.java'; then
    :
else
    echo "MessageBox: public MessageBox(String host){"
fi
if grep -q 'Registry registry = LocateRegistry.getRegistry(host);' './MessageBox.java'; then
    :
else
    echo "MessageBox: Registry registry = LocateRegistry.getRegistry(host);"
fi
if grep -q 'wordCounter[[:blank:]]*= (WordCount)[[:blank:]]*registry.lookup("WordCounter");' './MessageBox.java'; then
    :
else
    echo "MessageBox: wordCounter = (WordCount)registry.lookup("WordCounter");"
fi