pragma solidity ^0.8.0;
contract Receiver {
    address payable self;
    function receive () external { self.transfer(address(this).balance); }
}
