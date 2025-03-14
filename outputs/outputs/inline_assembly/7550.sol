pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    function f() public returns (uint) {
        uint tmp = add(x, y);
        uint tmp2 = add(add(tmp, tmp), y);
        uint tmp3 = add(add(tmp2, tmp), y);
        uint tmp4 = add(tmp3, add(tmp2, tmp));
        uint tmp5 = add(tmp, add(add(tmp3, tmp), tmp), y);
        uint tmp6 = add(tmp, tmp, y, x) + add(add(add(y, y), x), y) + add(y, y);
        tmp = add(tmp3, tmp4, tmp) -  add(add(tmp2, tmp), tmp);
        return tmp6 + tmp5;
    }
    function add(uint a, uint b) pure internal returns(uint) {
        return a + b;
    }
}
