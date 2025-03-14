pragma solidity ^0.8.0;
contract Mutate {
    uint[] a = new uint[](2);

    bool test;
    function setNums(uint256[] memory setNums) public {
            a = setNums;
    }
    function getIndex() public view returns (uint256) {







    }
}
