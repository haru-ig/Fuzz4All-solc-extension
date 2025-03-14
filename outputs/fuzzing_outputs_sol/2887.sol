pragma solidity ^0.8.0;
contract Bar {
    function barFallback() public payable {
    }
}
contract Buker {
    function foo() public {
       Bar foo = new Bar();
       foo.barFallback.value(5.0)();
    }
}
