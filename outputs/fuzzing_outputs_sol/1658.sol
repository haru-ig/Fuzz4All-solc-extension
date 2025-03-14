pragma solidity ^0.8.0;
contract T {
  function setFail(address addr) public {
    addr.delegatecall(abi.encodeWithSignature("bar(uint8(17))"));
  }
}


pragma solidity >=0.8.2;
contract D {
  constructor() {
    new T().setFail(address(this));
  }
}
```

[Back to Top](#solidity-basics)

<br/>
<br/>

## What about variables

A variable is a storage location that can be read directly and written to. Unlike registers, variables in Solidity are accessible without a memory pointer, and they can use modifiers to protect it from being modified:
```
pragma solidity <version>;
contract Foo {
  uint val1;
  function setVal1(uint newval) public {
    require(msg.sender == msg.sender);
    if (newval!= val1) {
      newval.delegatecall(abi.encodeWithSignature("bar(uint8(17))"));
    }
  }
}
contract Bar {
  function bar() public payable {
    msg.data.contract.setVal1(uint(13u));
  }
}
pragma solidity >=0.8.0 <0.9.0;
contract Baz {
  function setFail(address addr) public {
    addr.delegatecall(abi.encodeWithSignature("bar()"));
  }
}
```
[Back to Top](#solidity-basics)

---

[^[0]]: We are not yet completely sure if this part should be included in the documentation.
[^[0]]: Solidity has a `payable` modifier, which is an added convenience. However, if you don't like the idea of this modifier you can write a custom fallback function and add the "payable" modifier on it.
[^[0]]: When you use fallback function with receive function, the return value is ignored, since the function doesn't know how to deal with contracts, and it can't trust anything from data sent back.
[^[0]]: When you use a fallback function for a contract to store data, we recommend to not use a fallback function for that purpose, but instead use a receive function (e.g. `deposit()` method). With a receive function you can use functions for both deposits (to track the account balances) and transfers (to avoid sending out Ether), so don't store any sensitive data in the fallback or receive functions.
[^[0]]: Another example: If you implement a contract in Solidity and you remove the `fallback` state variable to be not payable, then you'll see what we mean[^[0]].
[^[0]]: Please refer to the documentation for more information.

[Up to Top](#solidity-basics)

---

## Summary

This section gives a detailed summary of Solidity's contract
