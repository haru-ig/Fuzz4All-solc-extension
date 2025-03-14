pragma solidity ^0.8.0;
contract SemanticallyEquivalentyV1 {
    constructor () public {
      revert(2**166);
    }

}

contract SemanticallyEquivalentyV2 {
    bytes32 public constant myContractHash = keccak256('myContractHash');
    uint public constant maxReverts1 = 2**166;

    constructor () public {
      revert(1);
      assembly {
        let x := mload(0x40)
        revert(x * 2 - maxReverts1)
      }
    }
}
function log(address e1, address e2, string memory e3) internal {
  require(msg.sender == e1, "failed");
  emit Log(e1, e2, e3);
}
event Log(address value1, string value2, string value3);
```

## Use gas manually

As part of writing smart contracts, we can be sure that our smart contracts will compile and execute correctly when a contract is deployed. However, we also want to check our smart contracts (again) before launching. It's also beneficial if we can check and see if a contract will consume some gas (we can only read a portion of the contract's code with a call).

It makes sense to use gas automatically in the `main` or `constructor` or other more reliable point of our development process. That's when the `gas` keyword comes into play. The keyword also comes with a keyword `call`, so when we want to call a solidity function, we can simply write `require(gas() > 0)` and then call the function.

We can manually calculate Gas in Solidity without the use of gas(), so take a look below!
```solidity


contract Example {
    uint public constant MAX_SUCK = 99999999999;
    uint x;

    constructor(uint p1) public {
      x = p1;
    }

    function f() public {
      require(x > 0);
      uint myGasUsed = gasleft();
      revert(MAX_SUCK);
      require(myGasUsed <= MAX_SUCK);
    }
}

pragma solidity ^0.5.0;
import "./Example.sol";
contract Example2 {
    function test() public {
        Example c = new Example(99999999999);
        c.f();
