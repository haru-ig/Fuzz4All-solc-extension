pragma solidity ^0.8.0;
contract Mutant_new3_{

    function () payable external { }
}

pragma solidity ^0.8.0;

struct NoAssembly { uint i; }
function f00({bytes4 x: 3}) public pure returns (uint, bytes32) {
    assembly { return (x, hash(x)) }
}
contract Mutant_new4 {

    modifier test7 {
        bytes4 x = 607703821;
        uint[] memory a = aaa([1 2 3]);
        bbb(x);
        ccc(x);
    }
    uint a;
    uint8 b;
    uint d;
    function a_60459089_aa94_4716_99b5_020dc5e231c8 (uint b) public returns (uint) {
        m();
        assembly {
            let x := 0
            let s := 0
            a := s
            switch b
            case 0 { s := hash32(s) }
            0; m()
            1; s
            default { s := s >> 8 }
            0; s
            return(a + 255)
        }
    }
    function b_38114787_8128_43a2_94cf_d4d75df65c26 (uint d) public returns (uint, uint) {
        uint8 f0 = 4;
        uint8 c = f0;
        uint8 b0 = 1;
        b0++;
        c = 0xa8;
        if ((134 < d) << 134) {
            c = c / (0xb + f0);
        }
        return(uint(uint8), b0);
    }

    function c_f352c0c5_e06a_4f3f_bbfa_86e981626f8f (uint b0, uint8 d0) public noinline returns (uint, uint8, uint) {
        if (d0 == 1) {
            b0--;
        }
        uint b = b0 >> 3;
        uint d = 0;
        uint8 c;
        uint c_2 = ((uint8)(0xff - c) + 0x10) + (uint)e;
        while (((0xb8) + f0) << 0x20) {
            d++;
            c_2 = (16 >>> 0x20) +
