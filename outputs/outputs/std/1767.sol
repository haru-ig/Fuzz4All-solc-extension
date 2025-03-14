pragma solidity ^0.8.0;
contract NonMutated {
    uint public a = 1;
    uint public immutable b = 2;
    function mutateAB(uint value) public { a = b; a += value; b = uint(keccak256(value)); }
}
