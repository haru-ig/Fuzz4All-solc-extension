pragma solidity ^0.8.0;
contract NewY4 {
    mapping(uint256 => uint256) public x;
    mapping(uint256 => uint8) public y;
    constructor() public {}
    function func() public pure{
        x[0] += 1;
        y[0] = 0;

    }
}
