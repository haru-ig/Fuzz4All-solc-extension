pragma solidity ^0.8.0;
contract Modifications3 is Modifications3_SEM {
    constructor(uint256 _x, uint256 _y) public Modifications3_SEM(x+_x, _y+25*10/_x){}

}
