pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    function f() public {
        s1.push(0);
        s1.push(1);
    }
}
```

## The `pragma solidity ^0.8.0`
<a name="pragma"></a>

There is a special pre-processor directive you would usually want to place at the top of source code, typically called "pragma" in its most generic context, to enforce specific software requirements. At the moment the compiler requires a `pragma solidity ^0.8.0;` at the top of your code file, as shown in the example above.

**Note** that this directive (which is also used by the `open source compiler version of the compiler`) has no impact on the type compatibility between files, apart from the requirement that each file be written using the same software requirements.
Therefore you'd have to re-write the above code each time you change the software requirement. Note that the directive would only work when you compile multiple solidity files together, so you'll need to repeat the `pragma solidity ^0.8.0` at the top of each file.

You are strongly encouraged to check out [solidity.readthedocs.io](https:

</details><br>

## What are the limitations of this contract compiler?

Below are specific limitations of the compiler and the compiler's support for specific features.

| Contract language | Description |
| ------------------ | ------------- |
| Solidity | The language for the code is compiled to EVM bytecode and executed via a virtual machine, the contract code to the target is executed then EVM state transitions the smart contract storage to the executing contract after every execution step. This contract has two possible states — Normal and Killed. On contract initialization it has a Normal state. The contract moves to Killed after timeout in case of unexpected error. After successful execution, the contract will be in Killed state for a fixed period of time and can be initialized again and the contract moves to Normal. After Killed state is reached, the smart contract is considered dead and any attempt to invoke it will result in a revert. |
| Solidity | Only one contract is compiled into the EVM bytecode file — the original source code.  The contract to the target is executed then the virtual machine state transitions the smart contract storage to the executing contract after every execution step. This contract has two possible states — Normal and Killed. One normal contract can be initialized at a
