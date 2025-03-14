pragma solidity ^0.8.0;
contract Mutate {
    uint256[] a = new uint256[](2);
    uint[] b = new uint[](2);
    bool test;
    function setNums(uint256[] memory set) public {
            a = set;
    }
    function getIndices() public pure returns(uint256[] memory) {
        return b;
    }
    function setBytes(uint[] memory) public {
            b = set;
    }
}
