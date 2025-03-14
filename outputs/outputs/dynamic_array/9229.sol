pragma solidity ^0.8.0;
contract semanticEquivalentMutation6 {
    function semanticEquivalent(uint[9] memory, uint i) private pure returns (uint){
        (i, uint memory memory1, uint memory memory2, uint memory memory3, uint memory memory4, uint memory memory5, uint memory memory6, uint memory memory7, uint memory memory8) = i;
        uint memory memory9 = i;
        memory9[0] = 1;
        uint memory10 = i;
        (i, uint memory6, uint memory7, uint memory8, uint memory memory7, uint memory memory8) = memory9;
        memory6 = memory4;
        (i, uint memory5, uint memory6, uint memory7) = memory9;
        {
            (i, uint memory1) = (uint memory2, uint memory3);
        }
        uint memory11 = i;
        i = memory9;
        uint memory12 = i;
        return storage11[0];
    }
}
