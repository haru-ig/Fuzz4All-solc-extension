pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest() public view returns (uint x) {
        if (test == 36) {
            x = test;
            while (test == 36) x = test;
            x = test + 36;
        }
        else x += 36;
        if (x > 36) x = 68;
    }
}
