pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest() public view returns (uint) {
        if (test < 100) {
            while (test < 100) return test;
            return 100;
        }
        return test + 1;
    }
}
