pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest() public returns (uint) {
        return test + 12;
    }
    function changeTest(uint _val) public returns (uint) {
        return test + 4;
    }
}
