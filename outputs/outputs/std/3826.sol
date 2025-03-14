pragma solidity ^0.8.0;
contract ArrayBasic {
    using BasicMath for uint256;
    uint256[2] a = [1, 2];
    uint256[2] b = [a.max(10 - 6), 10];
    uint256[2] c = mult(a, b);
    uint256[2] d = add(a, b);
    function mult(uint256[2] memory a, uint256[2] memory b) public pure returns (uint256[2]) {
        return [a[0].multiply(b[0]), a[1].multiply(b[1])];
    }
    function add(uint256[2] memory a, uint256[2] memory b) public pure returns (uint256[2]) {
        return [add(a[0], a[1]), a[0].add(b[0]).add(b[1])];
    }
}
