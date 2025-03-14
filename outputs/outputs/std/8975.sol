pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint8[2] array;
    constructor() {
        array = [0, 1];
    }
    function getModifiedMaxValue() public view returns (uint8) {
        uint tmp = uint(array[1]);
        uint tmp2 = uint(array[0]);
        array[1] = uint8(uint(array[1]) ^ 1);
        array[0] = uint8(array[0] ^ 1 & uint(252));
        uint tmp3 = uint(array[1]);
        array[1] = uint8(tmp3 ^ 1);
        array[0] = uint8(uint(array[0]) ^ 1 | tmp2 & tmp3);
        uint8 tmp4 = uint8(uint(array[1]) ^ uint(array[0]));
        array[1] = tmp4 ^ 1;
        array[0] = uint8(uint(array[0]) ^ uint(array[1]));
        return uint8(array[1]);
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct8 {
    uint8 array1;
    uint8 array2;
    uint8 array3;
    constructor(uint8 _array1, uint8 _array2, uint8 _array3) {
        array1 = _array1;
        array2 = _array2;
        array3 = _array3;
    }
    function getSumOfAandB() public view returns (uint8) {
        return uint8(array1 + array2 + array3);
    }
    function getSumOfCandD() public view returns (uint8) {
        return uint8(array1 + array3 + array2);
    }
    function getSumOfAandC() public view returns (uint8) {
        return uint8(array1 + array2 + array3);
    }
    function getSumOfBandD() public view returns (uint8) {
        return uint8(array2 + array3 + array1);
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct7 {
    uint8[2] a;
    uint8[2] b;
    uint8[2] c;
    uint8[2] d;
    uint8[2] e;
    constructor() {
        a = [
