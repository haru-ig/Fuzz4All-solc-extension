pragma solidity ^0.8.0;
contract Mutate77 {
    uint[][] x;
    constructor() public {
        x = new uint[][][](4);
    }
    function getX() public view returns ( uint[][][] memory ) {
        return x;
    }
}
