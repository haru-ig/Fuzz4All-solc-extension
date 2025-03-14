pragma solidity ^0.8.0;
contract Mutated3{
    uint[] public a;
    address public b;
    constructor(){
        a = new uint[](1);
        a[0] = 1;
        b = address(0);
    }
    function mutated21() public returns (uint) {
        return a[0];
    }
    function mutated22() public returns (uint) {
       a[0]++;
       a[0]++;
       return a[1];
    }
    function mutated34() public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]--;
       return a[1];
    }
    function mutated35() public returns (uint) {
       a[0]++;
       a[0]--;
       a[0]++;
       return a[0];
    }
}
