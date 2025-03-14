pragma solidity ^0.8.0;
contract Arrays11{

    uint256[] public s2;
    constructor() public{
        for (uint i=0; i < s2.length - 1; i++) s2[i] = 3;
        uint256 a = s2.length - 1;
    }
}
