pragma solidity ^0.8.0;
contract L20 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
    mapping(address=>T) public publicData;
    mapping(address=>uint) public publicData2;
    mapping(address=>uint[]) public publicData3;
    uint[10] public allPublicDataArray;
    constructor() public
    {
        publicData[msg.sender] = T.E;
    }
}
