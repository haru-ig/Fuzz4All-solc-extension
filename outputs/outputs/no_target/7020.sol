pragma solidity ^0.8.0;
contract Test {
    function run() public modifier testChange {
        changeTest();
        _;
    }
    function changeTest() public {
        test = 100;
    }
}
