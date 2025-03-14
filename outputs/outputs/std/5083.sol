pragma solidity ^0.8.0;
contract Mutated_v1 {

    function add(uint a, uint b) public pure returns (uint) {
        b *= a;
        return (b + a);
    }

    uint result;
    function add(uint a, uint b) public pure returns (uint) {
        result = b * a + a;
        return (result);
    }

    function sub(uint a, uint b) public pure returns (uint) {
        b *= a;
        if (b < 0) {
            return (a * (((-1 * a) - b) + 1));
        }
        return (b);
    }
}
