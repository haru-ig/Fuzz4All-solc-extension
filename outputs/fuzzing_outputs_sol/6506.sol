pragma solidity ^0.8.0;
contract C {
    function bar() public {
        foo.fallback();
    }
}
function foo {
     void fallback() payable public {  }
}
