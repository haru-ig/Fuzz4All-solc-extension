pragma solidity ^0.8.0;
contract mutator83 {
    uint constant k = 16;
    uint p = 0;
    constructor() {
    p.let(assembly { _ := k });
    }
function let(uint x) { x &= (1 << k);
    p <= x} }

pragma solidity ^0.8.0;
contract mutator82 {
    bytes2[] mybytes = new bytes2[](10);
    constructor() public {
        mybytes[0] = "the byte";
        mybytes[mybytes.length - 1] = "the byte";
        mybytes[4] = "the byte";
        mybytes[mybytes.length - 5] = "the byte"; }
function get(uint i) { return mybytes[i]; }
function set(uint i, bytes2 b) public returns (bool) { setbytes(i, bytes(b)); return true; }
function setbytes(uint i, bytes2 b) public returns (bool) { mybytes[i] = b; return true; } }

pragma solidity ^0.8.0;
contract mutator81 {
    bytes2[] view mybytes = new bytes2[](10);
    constructor() public {
        mybytes[0] = "the byte";
        mybytes[mybytes.length - 1] = "the byte";
        mybytes[4] = "the byte";
        mybytes[mybytes.length - 5] = "the byte"; }
function get(uint i) view internal returns (bytes2) { return mybytes[i]; }
}

pragma solidity ^0.8.0;
contract mutator80 {
    constructor() {
        uint8 a;
        uint8 b;
        uint8 c;
        uint8 d;
        uint8 e;
        uint8 f;
        uint8 g;
        uint8 h;
        uint8 i;
        uint8 j;
        uint8 k;
        uint8 l;
        uint8 m;
        uint8 n;
        uint16 o;
        uint16 p;
        uint32 q;
        uint64 r;
        uint s;
        address t;
        mapping (uint => uint) u;
        address u_t;
        address v;
        bytes memory v_b;
        address w;




i = 0;
    (z1 == z[0]);
    z[0] == x;
    uint z
