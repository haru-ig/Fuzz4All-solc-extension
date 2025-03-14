pragma solidity ^0.8.0;
contract Test {
    uint[] public Test1;
    function changeTest() public view returns (uint) {
        return Test1[11];
    }
}
