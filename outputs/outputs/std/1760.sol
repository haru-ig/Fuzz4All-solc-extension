pragma solidity ^0.8.0;
contract Mutated {
    function mutateA(uint a) public onlyOwner internal {
        a = a - 1;
    }
    function mutateB(uint b) public onlyOwner internal {
        b = b - 2;
    }
}
