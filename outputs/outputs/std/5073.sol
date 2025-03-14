pragma solidity ^0.8.0;
contract Mutated {
    uint max(uint a, uint b) public view returns (uint) {
        uint temp = a;
        a = b;
        b = temp;
        return (a);
    }
    function subAdd(uint a, uint b) public pure returns(uint) {
        a -= b;
        a += b;
        return (a);
    }
}
