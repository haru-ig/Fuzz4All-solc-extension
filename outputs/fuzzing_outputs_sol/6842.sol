pragma solidity ^0.8.0;
contract Caller {
    uint counter;
    uint value;

    function sendEther() public payable {
        counter = 1;
        if (address(this).balance == 0) throw;
        value = (address(this).balance) - msg.value;
    }
    function getCounter() public view returns (uint) {
        return counter;
    }
    function getValue() public view returns (uint) {
        return value;
    }
}
