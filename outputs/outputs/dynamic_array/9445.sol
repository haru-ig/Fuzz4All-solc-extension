pragma solidity ^0.8.0;
contract Arrays12{
    uint256[] public z;
    constructor() public{
        uint256 aa = z.push();
        aa--;
        aa--;
        z[aa] = 6;
        uint256 zz = z.length;
    }
}
