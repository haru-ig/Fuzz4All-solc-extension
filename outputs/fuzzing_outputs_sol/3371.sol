pragma solidity ^0.8.0;
contract S {
    function callBack() external payable {

    }
}
contract Caller {
    uint256 amount;
}
contract CallerFallback {
}
contract FallbackExample {
    Caller foo;
    function f() public {
        foo.amount <= 5 ether
        fallback(foo.foo());
    }
    function foo() public {

    }
}
