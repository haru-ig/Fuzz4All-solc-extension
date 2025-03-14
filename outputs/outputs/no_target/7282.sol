pragma solidity ^0.8.0;

struct SomeStruct {
    mapping(uint => address) mapping(uint => uint) mapping(uint => uint) private f;
    function add(uint iA, uint iB) public pure returns (uint) {
        return f[iA][iB];
    }
}
