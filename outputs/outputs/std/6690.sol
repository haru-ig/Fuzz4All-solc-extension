pragma solidity ^0.8.0;
contract Mutate85 {
    uint [] private x;
    uint256 private y;
    constructor() public {
        x = new uint[](4);
        for(uint256 i=0;i<x.length; i++){
            x[i] = i+1;
        }
        y = 2;
    }
    function modify(uint index) public {
        delete x[index];
    }
    function getX() public view returns ( uint[] memory ) {
        return x;
    }
    function getY() public view returns ( uint256 ) {
        return y;
    }
}
