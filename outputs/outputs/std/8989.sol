pragma solidity ^0.8.0;
contract ExampleUint161 {
    uint161[2] array;
    constructor() {
        array = [0, 1];
    }
    function getHighestUInt161() public pure returns (uint161) {
        return uint161(array[1]);
    }
    function getLowestUInt161() public pure returns (uint161) {
        return uint161(array[0]);
    }
    function changeMaxValue() public {
        uint161 tmp = array[1];
        array[1] = uint161(array[1] ^ 1);
        array[0] = uint161(array[0] ^ 1);
        uint161 tmp2 = array[1];
        array[1] = tmp;
        array[0] = tmp2;
    }
}
