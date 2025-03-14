pragma solidity ^0.8.0;
contract Test74 {
    address[] a;
    function f() public {
        a.push(address(new Test73()));
    }
}


```
