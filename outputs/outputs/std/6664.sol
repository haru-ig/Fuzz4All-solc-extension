pragma solidity ^0.8.0;
contract Mutate75 {
    uint[] x;
    uint256 y;
    constructor() public {
        x = new uint[](4);
        for(uint256 i=0;i<x.length; i++){
            x[i] = i;
        }
        y = 4;
    }
    function getX() public view returns ( uint[] memory ) {
        return x;
    }
    function getY() public view returns ( uint256 ) {
        return y;
    }
}
