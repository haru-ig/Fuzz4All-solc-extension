pragma solidity ^0.8.0;
contract Mutated9 {
    function sub(uint x) internal pure returns (uint) {
        x = x - 2;
        x = x - 3;
        x = x - 4;
        x = x - 5;
        return x;
    }
}
