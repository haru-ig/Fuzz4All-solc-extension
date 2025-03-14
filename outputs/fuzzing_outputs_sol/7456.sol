pragma solidity ^0.8.0;
contract Caller {
    function lowLevelCall(address contractAddr) public {
        LowLevel lowLevel;
        lowLevel = LowLevel(contractAddr);
        lowLevel.sendEtherToLowLevel.value(msg.value)("");
    }
}
}
