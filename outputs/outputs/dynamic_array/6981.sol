pragma solidity ^0.8.0;
contract Test8 {
    function s() public pure returns (uint) {
        return s2();
    }
    function s2() public pure returns (uint) {
        return 0;
    }
}
