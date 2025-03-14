pragma solidity ^0.8.0;
contract Caller {
    function transferWithFallback(address receiver, uint amount) public returns (bool);
    receive() public payable {}
}
