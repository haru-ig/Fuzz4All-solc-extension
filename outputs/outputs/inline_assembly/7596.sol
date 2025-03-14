pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xcBaC4DADDECAEF56;
    function f() public returns (uint x) {
        uint _tmp1 = 0xAF36EF;
        uint _tmp2 = 0xB02435;
        uint _tmp3 = 0xBD1A1B0146F34699;
        uint _tmp4 = initialy + f() - _tmp1;
        uint _tmp5 = initialy + 0xEF123456789ACDEF;
        uint _tmp6 = initialy + f() + 0x01234ADDECAFDEAD;
        uint _tmp7 = initialy + 0xDECAFDEADBEEF12 + _tmp6;
        x = _tmp2 + _tmp3 + _tmp4 + f() - 0x334E35 + f() + 0x354E3535BC1A1B;
        return x;
    }
}
