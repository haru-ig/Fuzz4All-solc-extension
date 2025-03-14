pragma solidity ^0.8.0;
contract mutator88 {
    uint g = 128;
    constructor() { g = g << 255; }
    modifier m (uint32 i) { g = g >> i; return; }
    function set (uint32 i) public m(i) {} }

pragma solidity ^0.8.0;
contract mutator89 {

    function set (uint32 i) public pure { uint256 t = 128; assert(uint256(0) >> uint32(255) == uint256(0) >> t); }
    function test () public pure { uint256 s; s = (uint256(0) >> uint32(255)) | (uint256(0) >> uint32(255)); } }
