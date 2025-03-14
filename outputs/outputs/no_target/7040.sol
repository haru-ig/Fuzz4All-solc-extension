pragma solidity ^0.8.0;
contract Test {
    uint test;
    function changeTest() public view returns (uint) {
        test = (test == 100)? test + 110 : 100;
        return test;
    }
}
