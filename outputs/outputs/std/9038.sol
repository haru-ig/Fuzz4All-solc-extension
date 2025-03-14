pragma solidity ^0.8.0;
contract ExampleClass {
    uint[] memory data;
    constructor () {
        for (uint i = 0; i < 10; i++) {
            data.push(i + 42);
        }
    }
    function getArrAt(uint index) public view returns (uint) {
        return uint2uint8(data[index]);
    }
}
