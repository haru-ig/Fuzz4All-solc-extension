pragma solidity ^0.8.0;
contract Caller {
    function callContractReturnsBool() public pure returns (bool) {
        return true;
    }
    function callContractWithReturnValue() public pure returns (address) {
        return msg.sender;
    }
    function callContractWithReturnValues() public pure returns (uint, address) {
        return (uint(0), msg.sender);
    }
    function callContractWithException() public pure throws {
        throw;
    }
    function callContractWithArguments() public pure {
        uint(0);
    }
    function callContractWithMemory() public pure {
        bytes memory a = bytes(0);
    }
    receive() external payable {}
}
