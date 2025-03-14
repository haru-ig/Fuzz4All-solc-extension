pragma solidity ^0.8.0;
contract Mutated4{
    function mutated22() public returns (uint) {
       return 2;
    }
    uint[3] public b;
}
contract Mutated3Mutated4 {
    function mutated23() public returns (uint) {
       Mutated4 storage m = Mutated4();
       return  m.mutated22();
    }
    uint[3] public c;
}
