pragma solidity ^0.8.0;
contract Caller {
    uint constant value = 9;
    function call() public payable {
        receive();
    }
    receive() external payable {}
}
