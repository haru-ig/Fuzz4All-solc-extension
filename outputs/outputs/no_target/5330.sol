pragma solidity ^0.8.0;
contract MutatedExamples13 {
    event eventWithoutPayer(uint z);
    event eventWithPayer(address p, uint z);
    function mutated(uint a, uint b) public {
        uint16 t = uint16(a < b? a : b);
        eventWithoutPayer(t);
        eventWithPayer(msg.sender, t);
    }
}
