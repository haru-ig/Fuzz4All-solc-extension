pragma solidity ^0.8.0;
contract Caller {
    address payable fallback;
    fallback function() public payable {
        address payable self = payable(msg.sender);
        fallback = self;
    }
    function doSomething() public{
        fallback.transfer(address(this).balance);
    }
}
