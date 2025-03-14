pragma solidity ^0.8.0;
contract Mutated {
    function sub(uint a, uint b) public pure returns(uint) {
        return (a + b + 3, b);
    }
}
