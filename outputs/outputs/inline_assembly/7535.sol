pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;

    function f() public {
        uint tmp = x + 1;
        uint tmp2 = tmp + tmp + 1;
        uint tmp3 = 1 + tmp2 + x;
        uint tmp4 = tmp2 + tmp3 + tmp + x;
        uint tmp5 = tmp + tmp3 + tmp4 + x;
        uint tmp6 = tmp + 10 + 100 + tmp5;
    }
    function setX(uint _x) public {
        x = _x;
    }
    function setY(uint _y) public {
        y = _y;
    }
}
