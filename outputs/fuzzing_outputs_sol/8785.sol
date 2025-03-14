pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 10;
    uint public constant maxEarned = 9;
    constructor () public {}
    receive() external payable {}
    function earn() public payable returns(uint) {
        require(value >= maxEarned, "!Earn!");
        value += maxEarned;
        return maxEarned;
    }
}
