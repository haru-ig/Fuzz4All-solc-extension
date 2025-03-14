pragma solidity ^0.8.0;
contract Contract {
    BaseInterface i;
    function myMethod(uint256) public {
        if (gasleft() > 85000)
            i.x();
    }
}


1.
## **1.7. Solidity IDE**
Now you have learned how to write a contract with Solidity. Let's go through the Solidity IDE, the tool that is recommended when Solidity is used in a blockchain. You can access your code through the **Open smart contract** button. You will get a smart contract generated with the ABI and bytecode. By default, code is parsed for types, variables, functions, etc., as it would be written in Solidity. However, when working at low-level, it is very useful to have a visual guideline about the code. Solidity is also an editing language and has syntax highlights of the code.

To view the code you can hover over the code and press the `ALT` or `CTRL` key. Alternately, you can right-click the code in the Code section and select **Copy code**.

To change the name of the smart contract, click the Smart Contract tab on the top and type a name. There is also a button in the top right corner, called Compile.

In the contract section, you can switch between the Solidity and assembly. For assembly, you can read the raw bytes, and then edit the bytes using a text editor. For Solidity, you can read what is inside the function or contract, edit that, and then use the *compile* and *run* buttons to recompile and run the code.

To compile the contract, you need to type the following:
```
pragma solidity ^0.8.0 <your-package>.sol: MyFileName
```

The `^0.8.0` is used in order to disable automatic compilation of all new releases of Solidity
* **1.8 Compiler**
As it is written in Solidity, every contract must have at least one function, which is called the **main** function. This main function determines what state the contract is in at runtime. All subsequent functions are optional.
Solidity supports both function definition and implementation, so contracts need at least one function in solidity.

**Example contract without code**
```
contract MyContract {
    // main function
    function main() public {
      ...
    }

    // functions which are not defined
}
```

* **2.2.2 Bytecode**
The *bytecode* is a set of bytes that is saved inside the contract and contains the code which is part of the smart contract, the inputs and the actual logic to function (the logic being, the "body") of the smart contract. To learn more about the *bytecode*, let's write this contract:
```
pragma solidity ^0.8.0;
contract SomeContract is ProxyBase, GnosisSafe {
    function proxyAddress() public {
      ...
    }
}
```

Here a `pragma solidity` is being used in the *bytecode
