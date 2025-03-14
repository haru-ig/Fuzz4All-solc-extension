pragma solidity ^0.8.0;
contract Test {

    uint public test;
    function get() public view returns (uint) {
        uint a = test > 10? 11 : 100;
        return a;
    }
}
