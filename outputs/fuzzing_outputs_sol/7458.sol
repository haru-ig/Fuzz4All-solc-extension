pragma solidity ^0.8.0;
contract Caller {
    contract LowLevelStorage {
        function lowLevel(address contractAddr) public pure returns (address lowLevelCallResult) {
            lowLevelCallResult = contractAddr.call{value : msg.value}("");
        }
    }

    address lowLevelAdr;

    constructor () public {
        lowLevelAdr = address(new LowLevelStorage{value : msg.value}());
    }

    function lowLevel(address contractAddr) public returns (address lowLevelCallResult) {
        lowLevelCallResult = lowLevelAdr.call{value : msg.value}("");
    }
}
