pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract seven
{
    function __() external pure { }
    function f() pure public returns (address)
    {
        return address(18446744073709551615);
    }
}
contract eight
{
    function __() external pure { }
    function f() pure public returns (uint)
    {
        uint x = 18446744073709551615 + 1;
        uint y = x + x;
        uint z = 17299996324 + 18446744073709551615;
        uint w = address(18446744073709551615) / uint(18446744073709551615+1);
        uint a = 153227249983 * 3432153127;
        return 562745;
    }
}
contract nine
{
    function __() external pure { }
    function f() pure public returns (uint)
    {
        bytes memory b;
        bytes32 c;
        bytes10 d;
        bytes16 e;
        bytes20 f;
        bytes256 g;
        bytes32 a;
        bytes32 h;
        bytes32 i;
        bytes32 j;
        bytes32 k;
        bytes32 l;
        bytes4 m;
        bytes6 n;
        bytes7 o;
        bytes8 p;
        bytes9 q;
        bytes17 r;
        bytes18 s;
        bytes19 t;
        bytes20 u;
        bytes22 v;
        bytes23 w;
        bytes33 x;
        bytes69 y;
        bytes224 z;
        int aaa;
        int bbb;
        int cc;
        bool ddd;
        bytes814 ee;
        bytes815 ff;
    }
    function g() pure public
    {
        require (7 == address(this).balance);
        bool s = (128004 == 0x00);
        bytes memory d;
        while (bytes(s).length() < 2);
        bool t = 3848579579 == 0x82;
        bool u = 3435973840 == 0xFF;
        string memory e;
        string memory f;
        bytes memory g;
        bytes memory h;
