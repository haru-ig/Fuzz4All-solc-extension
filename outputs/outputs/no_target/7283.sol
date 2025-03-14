pragma solidity ^0.8.0;
contract EquivalentToPreviousGeneration {
    int[] private arr;
    function setUint(uint x) public {
        arr[0] = (int)(x);
        uint y = arr[0];
        uint z = (uint)(arr[0]);
    }
    constructor() public {
        setUint(256);
    }
}
