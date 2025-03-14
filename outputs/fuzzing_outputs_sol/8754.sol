pragma solidity ^0.8.0;
contract mutatedCaller6 {
    uint256 public x, y;
    receive() public payable { }
    function fallback() public pure {
        x = 2000;
        y = this.balance;
    }
}
