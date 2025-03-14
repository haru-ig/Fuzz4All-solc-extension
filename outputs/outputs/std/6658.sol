pragma solidity ^0.8.0;
contract Mutate74 {
    uint[] x;
    bytes32[] y;
    constructor() public {
        x = new uint[](4);
        for(uint256 i=0;i<x.length; i++){
            x[i] = i;
        }
        y = new bytes32[](4);
        for(uint256 i=0;i<x.length; i++){
            y[i] = bytes32(i);
        }
    }
    function getX() public view returns ( uint[] memory ) {
        return x;
    }
    function getY() public view returns ( bytes32[] memory ) {
        return y;
    }
}
