pragma solidity ^0.8.0;
contract Mutated23{
    address[2] public a;
    address[2] public b;

    constructor(){
        b = new address[](2);
        b[0] = address(0);
        a = new address[](2);
        a[0] = a[1] = b[0];
    }
    function mutated13() public returns (address) {
       return a[0];
    }
    function mutated14() public returns (address) {
       return a[1];
    }
}
