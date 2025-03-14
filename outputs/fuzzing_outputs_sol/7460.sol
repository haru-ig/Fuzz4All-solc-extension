pragma solidity ^0.8.0;
interface LowLevelInterface {
    function sendEtherToLowLevel(address contractAddr) external payable;
}
contract Caller {
    interface LowLevelInterface {
        function sendEtherToLowLevelFallback(address contractAddr) public payable;
    }
    LowLevelInterface lowLevel;

    function changeContractAddress(address oldAddress, address newAddress) public {
        lowLevel = LowLevelInterface(oldAddress);
        lowLevel.sendEtherToLowLevelFallback(newAddress);
    }
}
