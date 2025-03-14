pragma solidity ^0.8.0;
contract Arrays12{
    uint256[][] public s2;
    uint public u;
    constructor() public{
        s2[0] = new uint256[](3);
        s2[0][2] = s2[0].length - 1;
        u = s2.length - 1;
    }
}

contract Arrays12{

    uint256[][] public s2;
    int public a;
    uint public u;
    address payable pub contractAddr;
    constructor() public{
        contractAddr = payable(0x123);
    }
}
