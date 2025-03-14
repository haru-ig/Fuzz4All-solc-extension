pragma solidity ^0.8.0;





contract SemanticTest_v1 {
    uint[] foo_arr;
    uint[] bar_arr;
    struct Data {
        uint[] __x;
    }
    function __constructor(uint[] memory _x, uint[] memory _y) public {
        foo_arr = _x;
        bar_arr = _y;
    }
}
