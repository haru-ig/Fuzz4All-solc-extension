pragma solidity ^0.8.0;
contract L1 {
    function f() public returns (uint x) {
        uint _tmp2;
        uint _tmp1 = 0xADECAFDEADBEEF12;
        uint _tmp3 = initialx + f() - 0x01234;
        uint _tmp4 = initialy + f() - _tmp1;
        (_tmp2) = (initialx + _tmp2 - _tmp3);
        (_tmp2) = (_tmp1 + (_tmp2 - _tmp3));
        x = 0xAD35DECAFDEADBEEF12 + _tmp2 + f() + 0xAF36EF + f();
        return x;
    }
}
