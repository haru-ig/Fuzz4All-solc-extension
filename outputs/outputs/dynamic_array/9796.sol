pragma solidity ^0.8.0;
contract SemanticTest_v2 {
    uint[][][] foo_arr;
    struct Data {
        uint[][][] __x;
    }
    function __constructor(uint[][][] memory _x) public {
        foo_arr = _x;
        foo_arr.push(new uint[](2));
    }
}
