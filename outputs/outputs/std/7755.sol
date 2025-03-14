pragma solidity ^0.8.0;
contract SolidityNew {
    mapping(address => uint256[]) public x;

    constructor() public {}

    function add(uint256[] memory a, uint256[] memory b) public pure returns (uint256[] memory c) {
        c = new uint256[](a.length+b.length);
        for (uint256 i = 0; i <a.length; i++) {
            c[i] = a[i];
        }
        for (uint256 i = 0; i <b.length; i++) {
            c[a.length+i] = b[i];
        }
    }

    function add(uint256 a, uint256[] memory b) public pure returns (uint256[] memory c) {
        return add(new uint256[](2),new uint256[](2)).push(a);
    }
}
