pragma solidity ^0.8.0;
contract D{
    uint i;
    function f() public{
        i = ((-i) + 2*2) & -1;
        i = ((-i) + 9876654321) / -(-(-i));
        i = ((-i) + 87654321) ^ (~2*2) & 4284631386 & 1;
    }
}
