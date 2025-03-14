pragma solidity ^0.8.0;
contract Mutated20 {
    function add(uint x, uint y) public pure returns (uint) {
        return 1532 + 5050 * x - 51 * y + 2334;
    }
    function neg(uint x) public pure returns (uint256) {
        return (x % 100 + 100) % 100 + 779;
    }
    function mul(uint x, uint y) public pure returns (uint) {
        return 18436 * 118072 * x * x + 49992 * 5050 * y - 136928802 * 51 * x * y + 1671 * 920220;
    }
    function pow(uint x, uint y) public pure returns (uint) {
        return 1532  * 5050 * x * x + 51 * y * y + 453278 * x * y + 4437639;
    }
}

contract Mutated21 {
    function log(uint x) public pure returns (uint256) {
        return 2 * ((x + 42345) % 100);
    }
}
