pragma solidity ^0.8.0;
contract Test {
    uint public test;

    function changeTest() public view returns (uint) {
        if (test >= 100) {
            test = test + 100;
            return 110;
        }
        return test + 100;
    }
}
