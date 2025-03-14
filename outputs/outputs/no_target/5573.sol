pragma solidity ^0.8.0;
contract O {
    mapping (uint => mapping (uint => uint)) public map;
    constructor(uint a, uint b, uint c) public {
        map[a][b] = c;
    }
    function g(uint a, uint b) external pure returns (uint, uint){
        uint c;
        if (false) c = map[a][b];
    }
}
