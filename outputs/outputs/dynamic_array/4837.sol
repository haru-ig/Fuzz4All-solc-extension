pragma solidity ^0.8.0;
contract Test1 {
    uint8[9] memoryArray;
    function setArray(uint8 _value) public {
        for (uint i=0; i < 3;++i) {
            memoryArray[i]= _value;
        }
    }
}
