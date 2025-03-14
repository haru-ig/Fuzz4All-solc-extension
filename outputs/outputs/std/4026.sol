pragma solidity ^0.8.0;
 contract MutatedArray is Array {
    uint x = 1;
    uint[] memory array = new uint[](3);
    function mutatedSetVal() public {
        array[0] = x;
        x = x + 1;
        array[1] = x;
        x = x + 1;
        array[2] = x;
        x = x + 1;
    }
    function mutatedSetNext(uint elem, uint next) public {
        setNext(elem, next);
        array[0] = x;
        x = x + 1;
        array[1] = x;
        x = x + 1;
        array[2] = x;
        x = x + 1;
    }
}
