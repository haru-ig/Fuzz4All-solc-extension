pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 0;
    function f() public {
        uint _tmp = x + 10;
        uint _tmp2 = _tmp + _tmp + 10;
        uint _tmp3 = 10 + _tmp2 + x;
        uint _tmp4 = _tmp2 + _tmp3 + _tmp + x;
        uint _tmp5 = _tmp + _tmp3 + _tmp4 + x;
        uint _tmp6 = _tmp + 10 + 100 + _tmp5;
    }
}
