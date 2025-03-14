pragma solidity ^0.8.0;
interface Contract {
    function bar() external;
    function setFalse() external;
    fallback() external payable;
}
contract myChainlink {
    constructor() {   }
    function changeToFalse(uint x) public {   }
}
interface contract {
    function foo() external payable;
}
contract Test {
    Contract contractInstance;
    uint payable y;
    constructor() {
        contractInstance = new Contract();
        y = msg.value;
    }
    function setFalse() external {
        contractInstance.setFalse();
        contractInstance.foo.value(y)();
    }
}
function test() public {
  Test testInstance = new Test();
  assert(!contractInstance.bar.isFallback);
  testInstance.bar();
  testInstance.foo.value(y)();
  testInstance.setFalse();
  assert(contractInstance.bar.isFallback);
  contractInstance.bar.value(y)();
}
```

---
