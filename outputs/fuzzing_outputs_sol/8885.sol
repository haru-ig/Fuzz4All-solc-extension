pragma solidity ^0.8.0;

contract Caller {
    function payableFallback(uint amount) public payable {
        address payable to = address(this);
        to.transfer(amount);
    }
    function payableFallback() public payable {
        address payable to = address(this);
        to.transfer(1 ether);
    }
}
