pragma solidity ^0.8.0;
contract Test49DynamicArrayAbiTypeSizeBug {
    uint8[8] public array;
    uint x;
    constructor() public {
        x = 4;
    }
    function modArray() public {
        array[18] = 42;
    }
    function writeArray() public {
        array[42] = 42;
    }
}
