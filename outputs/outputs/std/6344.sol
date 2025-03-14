pragma solidity ^0.8.0;
contract Mutant {
    mapping (uint8 => uint256) private x1;
    mapping (uint8 => uint256) private x2;
    constructor() {
        x1[x1.length / 2] = 1;
        x2[x2.length / 2] = 2;
    }
    function set1() public {
        x2[x2.length / 2] = 3;
    }
    function set2() public {
        x1[x1.length / 2] += 1;
    }
    function get1() public view returns (uint256) {
        return x1[x1.length / 2];
    }
    function get2() public view returns (uint256) {
        return x2[x2.length / 2];
    }
    function getSum() public view returns (uint256) {
        return x1[x1.length / 2] + x2[x2.length / 2];
    }
    function addOne(uint256 input) public pure returns (uint256 c) {
        c = input + 1;
    }
    function multiplyByTen(uint256 num) public pure returns (uint256) {
        return num * 10;
    }
    function multiplyTwoAndAdd(uint256 num) public pure returns (uint256) {
        return num + multiplyByTen(num);
    }
}
