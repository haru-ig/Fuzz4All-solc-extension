pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint8[2] array;
    constructor() {
        array = [0, 1];
    }
    function setHighestValue(uint8 v2) public {
        uint8 tmp = array[1];
        array[0] = uint8(array[0] ^ 1);
        array[1] = uint8(array[1] ^ 1);
        uint8 tmp2 = array[0];
        array[0] = uint8(array[0] ^ 1);
        array[1] = tmp;
        array[1] = tmp2;
        array[1] = v2;
    }
    function setRandomValue() public random {
        uint8 value = uint8(keccak256(abi.encodePacked(block.difficulty, block.timestamp, address(this), block.number)));
        array[0] = value;
        array[1] = value;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint[2] memory array;
    constructor() {
        array = [0, 1];
    }
    function getHighestValue() public view returns (uint) {
        return uint(array[1]);
    }
    function getLowestValue() public view returns (uint) {
        return uint(array[1]);
    }
    function changeMaxValue() public {
        uint tmp = array[1];
        array[1] = uint(array[1] ^ 1);
        array[0] = uint(array[0] ^ 1);
        uint tmp2 = array[1];
        array[1] = tmp;
        array[0] = tmp2;
    }
}
