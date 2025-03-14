pragma solidity ^0.8.0;
contract Mutate73 {
    uint[] x;
    constructor() public {
        x = new uint[](4);
        for(uint256 i=0;i<x.length; i++){
            x[i] = i;
        }
    }
    function getX() public view returns ( uint[] memory ) {
        return x;
    }
}
