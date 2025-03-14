pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(addWithWrapping(arr[index], uint8(9223372036854775807)));
    }
    function addWithWrapping(uint a, uint b) public pure returns(uint) {
        uint c = a + b;
        if(c >= a) {
            return c;
        }
        return a + b - 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    }
    function uint2uint8(uint source) public pure returns(uint8) {
        return uint8(source) + uint8(source>>24);
    }
}

pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] arr;
    constructor(uint[] memory data) {
        arr = data;
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(addWithWrapping(uint2uint8(arr[index]), uint8(9223372036854775807)));
    }
    function addWithWrapping(uint a, uint b) public pure returns(uint) {
        uint c = a + b;
        if(c >= a) {
            return c;
        }
        return a + b - 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFLLLLLLLLL;
    }
    function uint2uint8(uint source) public pure returns(uint8) {
        return uint8(source) + uint8(source>>24);
    }
}

pragma solidity ^0.8.0;
contract ExampleClass {
    uint x;
    constructor(uint data) {
        x = data;
    }
    function setXToZero() public {
        x = 0;
    }
    function getXAsOne() public view returns (uint8) {
        return uint8(x == 1);
    }
    function getXAsTwo() public view returns (uint8) {
        return uint8(x == 2);
    }
}
