pragma solidity ^0.8.0;
contract H {
    function foo() public {
        new C().bar();
    }
}
pragma solidity ^0.8.0;
contract Caller {
    function foo() public payable returns (address) {
        C c = new C();
        C[] memory array = new C[](2);
        array [0].bar();
        array [1].bar();
        return address(p = h = c.foo());
    }
}
```
