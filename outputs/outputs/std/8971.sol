pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint256[4] array;
    constructor() {
        array = [uint256(1), uint256(2), uint256(3), uint256(4)];
    }
    function getMinInt() public view returns (uint256) {
        return array[0];
    }
    function getLowestUInt() public view returns (uint256) {
        return array[1];
    }
    function getHighestUInt() public view returns (uint256) {
        return array[2];
    }
    function changeMaxValue() public {
        uint256 tmp = array[3];
        array[3] = uint256(uint256(array[3]) | 1);
        array[0] = tmp;
    }
}
