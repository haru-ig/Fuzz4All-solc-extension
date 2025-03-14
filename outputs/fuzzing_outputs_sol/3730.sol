pragma solidity ^0.8.0;
interface TestInterface {
    function do_a(uint _x) public;
}
contract Example9Mutated {
    function _fallback(uint x) public payable pure {
        TestInterface i = x % 2 == 0? TestInterface(address(address(this))) : TestInterface(address(this));
        i.do_a(x);
    }
}
```
## Contracts, inheritance & contracts-library - Ether transfer from internal functions

A contract's inherits a function from another contract by calling it directly via inheritance, although the function cannot actually invoke the inherited function without calling the function itself. E.g. in this contract the function `b` is inherited by the `C` contract.

```solidity
pragma solidity ^0.8.0;
contract A {
    function b() public pure {
        return 1;
    }
}
contract C is A {}
```

In the `C` contract the inherited function `b` calls `c`. The function `c` defines it.

```solidity
pragma solidity ^0.8.0;
contract A {
    function b() public pure {
    }
}
contract B is A {}
contract C is B {
    function c() public pure {
    }
}
contract D is C {
    function f() public pure {
        A a = C.b();
    }
}
```

Attempting to use the inherited function `c` will fail without calling `c`. On the other hand, calling the inherited function `b` directly without calling `b` still works.
