pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a;
    uint256 internal b = 0;
    uint256 internal internalVar = 0;
    uint internal constant incrementDelay = 9000;
    uint256 c;
    function stop() public returns(uint256 c) {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
        c = a+b+1;
        return a + b;
    }
    function incrementA() public view returns (uint256) {
        a = a+1;
        return a;
    }
    function incrementB() public view returns (uint256) {
        b = b+1;
        return b;
    }
    function incrementAandB() public view returns (uint256) {
        a = a+b+1;
        b = b+1;
        return a + b;
    }
    function getBalanceOf(address addr) public view returns (uint256 balance) {
        balance = balanceOf[addr];
    }
    function getNewBalanceOf(address addr) public view returns (uint256 newBalance) {
        newBalance = new
