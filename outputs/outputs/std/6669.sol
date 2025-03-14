pragma solidity ^0.8.0;
contract Mutate82 {
    int[] x;
    int256 y;
    constructor() public {
        x = new int[](4);
        for(uint256 i=0;i<x.length; i++){
            x[i] = i;
        }
        y = 4;
    }
    function getX() public view returns ( int[] memory ) {
        return x;
    }
    function getY() public view returns ( int256 ) {
        return y;
    }
}
