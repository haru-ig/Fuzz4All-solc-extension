pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest() public {
        test **= 100;
    }
}
