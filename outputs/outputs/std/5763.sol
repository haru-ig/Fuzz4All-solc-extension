pragma solidity ^0.8.0;
contract Mutated2{
    uint256 [] public a;
    uint [] public b;
    constructor(){
        a = new uint256[](1);
        a[0] = 1;
        b = new uint[](1);
        b[0] = 0;
    }
    function mutated11() public returns (uint) {
       b[0]++;
       return a[0];
    }
    function mutated12() public returns (uint) {
       return a[0];
    }
}
