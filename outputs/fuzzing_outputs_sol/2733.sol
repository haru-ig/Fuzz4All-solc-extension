pragma solidity ^0.8.0;
contract Caller3 {
    function foo(address x) public payable {}
    function bar(address x, uint y) public payable {}
}
contract Caller4 is Caller3 {

    function baz() public payable {}

    function foo(uint256 x) public payable {}
}
contract Caller5 is Caller2, Caller3 {

    function baz() public payable {}
    function bar(uint256 x) public payable {}
}
contract Caller6 {

    function foo(uint256 x) public payable {}

    contract {
        function callFoo(uint256 x) public payable {}
    }
}
contract Caller7 {

    function bar(uint256 x) public payable {}

    function foo(uint256 x, uint256 y) public payable onlyFallback {
        bar(1000);
        if (x < 1000) {
            x ++;
        }

        payableFallback();
    }
}
