pragma solidity ^0.8.0;
contract Mutated2{
    uint[] public a;
    address public b;
    constructor(){
        a = new uint[](1);
        a[0] = 1;
        b = address(0);
    }
    function mutated11() public returns (uint) {
        return a[0];
    }
    function mutated12() public returns (uint) {
       a[0]++;
       return a[1];
    }
}
