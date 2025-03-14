pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint[3] array;
    constructor() {
        array = [1,2,3];
    }
    function getMinInt() public view returns (uint) {
        return array[0];
    }
    function getMinUint() public view returns (uint) {
        return uint(array[0]);
    }
    function getMaxUint() public view returns (uint) {
        return uint(array[1]);
    }
    function increaseValue(uint i) public {
        uint256 x;
        x = array[0];
        array[0] = x + 2;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct10 {
    uint[3] array;
    constructor(uint x,uint y,uint z) {
        array = [x,y,z];
    }
    constructor(uint h) {
        array = [h,h,h];
    }
    function getMinInt() public view returns (uint) {
        return array[0];
    }
    function getMaxUInt() public view returns (uint) {
        return uint(array[1]);
    }
    function sumElementInArray(uint i) public view returns (uint) {
        return array[0] + array[1] + array[2];
    }
}
