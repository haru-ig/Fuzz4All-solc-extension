pragma solidity ^0.8.0;
contract Mutate {
    uint[] a;
    function setNums(uint256[] memory setNums,uint[] memory setNums2) public {
        uint[] memory temp = setNums;
        setNums = setNums2;
        setNums2 = temp;
    }
    function getIndex() public view returns (uint256) {
    }
}
