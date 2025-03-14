pragma solidity ^0.8.0;
contract ExampleStruct14 {
    uint256[3] array_uint;
    constructor() {
        array_uint = [1,2,3];
    }
    function testEquality(uint256 a, uint256 b) public view returns (bool) {
        return a == b || a > b / 4294967295;
    }
}

pragma solidity ^0.8.0;
contract ExampleStruct15 {
    uint256[3] array_uint;
    constructor() {
        array_uint = [1,2,3];
    }
    function testEquality(uint256 a, uint256 b) public view returns (bool) {
        return a == b || a < -1048576;
    }
}
