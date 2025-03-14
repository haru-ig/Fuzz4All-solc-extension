pragma solidity ^0.8.0;
contract Test {
    uint256[] data;
    IsolateData _data;
    constructor(uint256 initialValue) {
        data = new uint256[](1);
        data[0] = initialValue;
    }
    function modifyRandom() {
        data = data.concat(new uint256[](1));
        data[0] -= 1;
    }

    function test() public {
        uint256[2] memory array = [3, 2 * 3];
        uint256 tmp = array[1++];
    }
}
