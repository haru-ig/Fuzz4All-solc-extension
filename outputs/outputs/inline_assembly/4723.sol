pragma solidity ^0.8.0;
 contract mutator88 {
    uint256 g = 128;
    constructor() { g = g << 255; }
    function mutate(bytes memory m) public { m[80] = 34; } }

pragma solidity ^0.8.0;
contract mutator89 {
    uint256 g = 128;
    constructor() { g = g << 255; }
    function mutate() public {
        bytes memory n = "\xaa";
        g = g << 255;
        m[80] = 34; }
    function getBytes() public view returns (bytes memory){ return n; } }
