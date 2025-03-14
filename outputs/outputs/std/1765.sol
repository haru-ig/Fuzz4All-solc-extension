pragma solidity ^0.8.0;
contract UnMutated {
    function mutateB(uint value) public { value += 3; }
}
