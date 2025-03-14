pragma solidity ^0.8.0;
library Test {
    mapping(uint256 => string) public names;
    string public names2;
    constructor () public {
        if (!0) {
        }
    }
    function test(uint i) view public returns (uint256) {
        uint256 j;
        asm {
            mstore(0, names[i])
            mstore(32, names[i])
            names[i] := mLoad(0)
            names[i] := mLoad(32)
        }
        return names[i];
    }
}
contract Test {
    uint x;
    uint constant A = 1;
    mapping(uint => uint2) b;
    uint constant B = 97;
    constructor () public {
        b[A] = B;
    }
    function test(uint a) view public returns (uint) {
        uint k = 0;
        uint2 b = x;
        uint z = B;
        while(b > a) {
            b += 1;
            k += 1;
        }
        b.test();
        return k;
    }
}
contract Test {
    address constant D = 0xAaaAdD33e86596BA82741Eb30C185f8223d0b842;
    address constant E = 0xB70F97c150B0B73D9b7E28c0FDD972a662b55B76;
    address constant E1 = 0x413EDE29EBF6b43177945B5f0E12c001317aB2B3;
    address constant F = 0x22Bcb43549818d35B41CC2C431A81cB085b99444;
    address constant G = 0xC979E14E9B50A2bB56F374cDF58216f339221b7B;
    address constant H = 0xA3689A2425D9E5B09d595900efB5f74A355438e5;
    address constant H1 = 0xE99cF9d2512A59eD0380909c2E4183a17cb6d9F1;
    address constant G1 = 0x4ab17658A7cb82225784B39F9f14282DEdd0D032;
    address constant G2 = 0x7E1c51521632a090cf09
