pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    function f() public returns (uint x) {
        uint _tmp1 = initialx + 42;
        uint _tmp2 = initialx + _tmp1;
        uint _tmp3 = initialy + 0x1234;
        uint _tmp4 = _tmp2 + 0x1234 + initialy;
        uint _tmp5 = _tmp3 + initialx + initialy;
        uint _tmp6 = initialy + _tmp3;
        uint _tmp7 = initialy + f();
        uint _tmp8 = initialx + _tmp7;
        x = _tmp8++;
        return initialx + _tmp8;
    }
}
