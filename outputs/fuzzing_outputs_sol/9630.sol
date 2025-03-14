pragma solidity ^0.8.0;
contract Caller {
    address payable nonFallback;
    function test() public {
        nonFallback.call.value(1 ether)("");
    }
}
