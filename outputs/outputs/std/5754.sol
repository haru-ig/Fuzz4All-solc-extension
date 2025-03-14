pragma solidity ^0.8.0;
contract Mutated1{
    uint[] public a;
    address public b;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
        b = address(0);
    }
    function mutated11() public returns (uint) {
        return (a[0] + 3) % 4;
    }
    function mutated12() public returns (uint) {
        uint x = 4;
        while (x!= 0){
            x = 16 - x % 4;
        }
        return (a[0] + 3) % 4;

    }
}
