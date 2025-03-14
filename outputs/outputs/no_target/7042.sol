pragma solidity ^0.8.0;
contract Test {

    uint public test;
    function changeTest() public view returns (uint) {
        if (test == 100) {
            test;
            while (test == 100) return test;
            test = 110;
            return 110;
        }
        test;
        return test + 100;
    }
}
