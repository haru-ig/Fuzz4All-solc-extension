pragma solidity ^0.8.0;
contract Caller2 {
    uint256 a;
    function call() public payable { this.balance;}
    function receive() public payable { this.balance;}
    function payableFallback() public payable { a = this.balance; }
}
