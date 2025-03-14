pragma solidity ^0.8.0;
contract Mutators {
    function test_2 () public view returns (uint256 res) {
    }
    function test_3 () public view returns (uint256 res) {
        res = 1;
    }
    function test () public view returns (uint256 res) {
        res = test_2();
        res += 1;
        res /= 2;
        res += test_3();
        res -= 11;


    }
}
