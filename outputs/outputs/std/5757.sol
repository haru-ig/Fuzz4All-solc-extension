pragma solidity ^0.8.0;
contract  Mutated2{
    uint b;

    function Mutated2() {
        b = 2;
    }
    function mutated2() public retruns(uint){
        b = uint(b + 3) % 4;
        return b;
    }
}
