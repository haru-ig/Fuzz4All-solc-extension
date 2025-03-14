pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    uint X;
    event ChangeToFalse(uint x);
    modifier True {
        require(b3 == true, 'AssertionFailed');
        _;
    }
    function bar() public True {
        X = 11;
    }
    function foo() payable True {
        b3 = false;
        X = 12;

    }
}
```

## Compiling contract with Inline Assembly
*In Solidity, the command `compile` is used to compile Solidity code.*

1. Open [Solidity Explorer](https:
![Maincontract](https:

2. Scroll down on top of the page and enter a name for your contract, and optionally add a description. Then in the code snippet box in the left panel, insert code that compiles the contract with Inline Assembly. You must use the pragma to prevent the Inline Assembly compiler from making assumptions about the compilation environment. This must be done using the pragma keyword at the top of the contract to be compiled in solidity.
![Compile](https:

3. Once the code has compiled successfully, the `Compile` button updates to indicate that the compilation was successful.
![Compiledsuccessfully](https:

## Using the Result
*You can now use your new compiled contract on the chain and view its behavior.*

1. Go back down to the `MyContract` contract and expand the top panel to see the console. You'll see the Inline assembly was used to compile, execute and log a specific message onscreen.
![Executedsuccessfully](https:

2. Go back and expand the `MyContract` contract to see how the output is displayed without having to read the full contract.
![Output](https:

In this case, `Executed Successfully`.

## Important Notes
*The Inline Assembly compiler is not the only option for using Inline Assembly
