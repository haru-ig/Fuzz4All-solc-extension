pragma solidity ^0.8.0;
contract Test37 {
    function f(uint[] array) internal pure returns (uint) {
        return array[(10**20)-1];
    }
}
