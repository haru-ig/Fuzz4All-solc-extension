pragma solidity ^0.8.0;
contract SemanticTest_v2 {
    struct Data {
        DynamicArrayLayout foo_arr_layout[5];
        DynamicArrayLayout bar_arr_layout[5];
    }
    function __constructor(uint[] memory _x, uint[] memory _y) public {
        foo_arr_layout[0].assign(_x);
        for (uint64 i = 1; i < 5; i++) {
            bar_arr_layout[i].assign(_y);
        }
    }
}
