pragma solidity ^0.8.0;
contract Mutated8 {
    function mul(uint x) public pure returns (uint) {
        x = x / 200;
        return x;
    }
}
