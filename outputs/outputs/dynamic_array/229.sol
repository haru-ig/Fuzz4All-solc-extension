pragma solidity ^0.8.0;
contract C7 {
    mapping(mapping(uint256 => uint256) storage) x;
    mapping(uint256 => uint256) storage y;
    uint256 z = 0;
    constructor(uint256 z) public {
        x[z][z + 5] = 5;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return x[z][z] + x[z][z + 4];
    }
    function addMutated(uint256 a, uint256 b) public pure returns (uint256) {
        x[z][z] += x[z][z + 5];
        x[z][z + 5] = x[z][z] + a;
        return a + b;
    }
    function mutate() public {
        y[1][1] = 1;
    }
}

pragma solidity ^0.8.0;
contract C7 {
    mapping(uint256 => uint256) storage x;
    mapping(uint256 => uint256) storage y;
    uint256 z = 0;
    constructor(uint256 z) public { x[z][z + 5] = 5; }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return x[z][z] + x[z][z + 4];
    }
    function addMutated(uint256 a, uint256 b) public pure returns (uint256) {
        a += b;
        x[z][z] <<= 1;
        x[z][z + 5] = (a + (x[z][z] >> 2) + z * 2) % 128;
    }
    function mutate() public { y[1][1] = 1; }
}

pragma solidity ^0.8.0;
contract C7 {
    constructor(uint256 z) public { x[z][z + 5] = 5; }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return x[z][z] + x[z][z + 4];
