pragma solidity ^0.8.0;
contract Fallback {
}
contract Caller {
    function foo() public {
        Fallback f;
        f.foo();
    }
}

contract Caller {
    function bar() public {
        Fallback f;
        f.bar();
    }
}
