pragma solidity ^0.8.0;
contract Mutate {
    uint256 public a = 3;
    uint i = 3;
    uint256 public b = 3;
    uint256 public c = 3;
    uint256 public d = 3;
    uint256 public l;
    uint256 public m;
    uint256 public n;
    uint256 public public2D;
    uint256 public public2W;
    constructor() payable public {
        l = 29;
        m = 6;
        n = uint256(keccak256("Hello, world!"));
    }
    function test() public view returns (uint256) {
        c = a;
        c = a + 3;
        c = a + i;
        c = a + b;
        c = a + c;
        c = a + d;
        a = b + c * uint256(keccak256("This is a test"));
        a = a.add(m);
        a = a + n;
        a = a.add(l);
        return 0;
    }

    function test2() public view returns (uint256) {
        uint256 a = 0;
        uint256 b = 0;
        uint256 c = 0;
        address a = 0;
        address b = 0;
        bytes32 c = 0;
        uint256 d = 0;
        uint256 e = 0;
        uint256 f = 0;
        bool a = false;
        bool b = false;
        uint256 g = 0;
        uint256 h = 0;
        int256 i = 0;
        int256 j = 0;
        uint256 k = 0;
        uint256 l = 0;
        uint256 m = 0;
        uint256 n = 0;
        uint256 o = 0;
        uint256 p = 0;
        uint256 q = 0;
        uint256 r = 0;
        uint256 s = 0;
        uint256 t = 0;
        uint256 u = 0;
        uint256 v = 0;
        bytes32 w = 0;
        address x = 0x252f8F0d7c7A873478eE79d126B2cB0f7617406F;
        address y = 0xB08A43B90cF1E6798992b4479D4355ef589e039C;
        a = address(this);
        b = 31;
        c = uint256("10");
        d = uint256(uint32(keccak256
