pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA0123456;
    function f() public pure returns (uint x) {
        uint _tmp1 = 0x00000000A01041DE0;
        uint _tmp2 = 0x12341234343FBD3E0;
        uint _tmp3 = 0x01121F075BFEB7EF;
        uint _tmp4 = initialx + _tmp1 - 0x01234;
        uint _tmp5 = initialy + f() - _tmp2;
        uint _tmp6 = initialy + 0xEACA8835787AC1E2;
        uint _tmp7 = initialy + f() + 0x01234ADECAFDEAD;
        uint _tmp8 = initialy + 0xFEFB7EF34567CFDD;
        uint _tmp9 = _tmp5 + f() + 0x09AC354 + _tmp3 + 0x787AC1E2CC78E94;
        uint _tmp10 = 0x01234DECADEA012 + _tmp7;
        uint _tmp11 = _tmp4 + _tmp10 + 0x0235 + _tmp6;
        return 0xEF123456789ACDEF + _tmp8 - _tmp4 + 0x353CDECADA + _tmp
