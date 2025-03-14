pragma solidity ^0.8.0;
contract Test74 {
    uint256[5] x0Storage;
    uint256[5] x1Storage;
    uint256[3] x2Storage;
    uint256[5] x3Storage;
    uint256[] x4Storage;
    bool x5Storage;

    mapping (uint256[] => uint) y6Storage;
    mapping (uint256[] => uint) z6Storage;

    function g6() public pure {
        Test74(address(this)).f2(0x0, 2, 3, true);
        Test74(address(this)).f2(0xffffffffffffffffffffffffffffffffffffffffffffffffff,1);
    }

    function f2(uint a, uint b, uint c, uint d) public pure {

    }

    function h2() public pure {
        Test74(address(this)).i2();
        Test74(address(this)).i2(0x5);
        Test74(address(this)).i2(0x5, 0x6);
        Test74(address(this)).i2(0x5, 0x6, 0x7);
    }

    function i2() public pure {
        y6Storage[0x5] = 0x6;
        y6Storage[0x6] = 0x7;
        y6Storage[0x7] = 0x8;

        x5Storage = true;
        x5Storage = false;
        x5Storage = false;
    }
}

pragma solidity ^0.8.0;
contract Test75 {
    mapping (uint256[] => uint) f;
    uint256 g;

    function g5() public pure {
        uint[3] memory x = a3(0xfd, 0x64255840c5b4156d14ef5e7c8003241b9ac86a5ff);
        uint256 constant a = 0x1 << 18;
        x[0] = x[0] * a;
        x[1] = 0x8000000000000000000000
