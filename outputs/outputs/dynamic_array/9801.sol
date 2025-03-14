pragma solidity ^0.8.0;
contract SemanticTest_v2 {
    uint[] private foo_arr;
    uint[] private bar_arr;
    struct Data {
        uint[] x;
    }
    function __constructor(uint[] memory _x, uint[] memory _y) public {
        foo_arr = _x;
        bar_arr = _y;
    }
}
contract SemanticTest_v2 {
    uint[] public bar_arr;
    struct Data {
        uint[] x;
    }
    function __constructor(uint[] memory _x, uint[] memory _y) public {
        uint[][] memory foo = new uint[][][](2);
        foo[0] = _x;
        foo[1] = _y;
        bar_arr = foo[0];
    }
}
