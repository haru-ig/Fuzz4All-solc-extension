pragma solidity ^0.8.0;
contract Mutated9 {
    function add(uint x) internal pure returns (uint) {
        assert(x < 0xfffffff);
        x = x + 1;
        x = x + 2;
        x = x + 3;
        x = x + 4;
        x = x + 5;
        return x;
    }
}
