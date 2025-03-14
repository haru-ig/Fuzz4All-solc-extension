pragma solidity ^0.8.0;
contract SemanticTest_v2 {
    uint[] public foo_arr;
    uint[] public bar_arr;
    struct Data {
        uint[] x;
    }
    function __constructor(uint[] memory _x, uint[] memory _y) public {
        foo_arr = _x;
        bar_arr = _y;
    }
}
