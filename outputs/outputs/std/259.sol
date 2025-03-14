pragma solidity ^0.8.0;
contract Memory {
    uint8[0] myArray;
}

pragma solidity ^0.8.0;
contract ArrayMutation {
    uint8[0] myArray;
}
{% endhighlight %}

Here are the commands issued to the terminal.
{% highlight ruby %}
cd ~/dev/contracts
truffle test
truffle deploy
truffle console
{% endhighlight %}

You will need to compile this `memory_modifications` contract.

Compile the `memory_modifications` contract using the command `$ truffle compile`.

{% highlight ruby %}
~/dev/contracts/test $ g++ -g -c array_modifications.cpp && g++ -o array_modifications memory_modifications.o -I/usr/local/include/solc &&./a.out
{% endhighlight %}

You can run the contract using the command `$ truffle test`.

`truffle test` starts a Solidity REPL at `localhost:8545`, which is intended for small applications. It accepts your commands and sends them to the running smart contract.

The Solidity test runner accepts test cases written in the standard [Givens/Then/And syntax](https:

{% highlight ruby %}
(GIVEN ) =>
    (AND
        (EQ
        (VALUE 3)
    )
{% endhighlight %}

You can deploy a new Smart contract through the command `$ truffle deploy`. It will compile the Smart contract, deploy it to the blockchain, and wait for you to approve its execution. At the console, execute `$ truffle console` and change the test case at line 12 from `'my_array'` to `'my_array_m_1'`.

Next, compile for the second time, including the newly modified contract.

{% highlight ruby %}
~/dev/contracts/test $ truffle compile
Contract my_array will be deployed with the same arguments as in the originating deployment
Contract my_array_m_1 will be deployed with the same arguments as in the originating deployment
{% endhighlight %}

`$ truffle console` connects you to a running smart contract at `localhost:8545`. In the console, examine the `myArray` instance variable before and after adding elements to it the the contract.

{% highlight ruby %}
~/dev/contracts/test $ truffle console
myArray(32)
myArray(0)
myArray(1)
myArray(2)
myArray(3)
myArray(4)
myArray(5)
myArray(6)
myArray(7)
myArray(8)
myArray(9)
myArray(10)
myArray(11)
myArray(12)
myArray(13)
myArray(14)
myArray(15)
myArray(16)
myArray(17)
