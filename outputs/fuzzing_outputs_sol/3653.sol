pragma solidity ^0.8.0;
contract MutateSemantic5Caller3 is MutateSemantic5Caller2 {
    function modifyC2(uint256 x, uint y) public returns (uint) {
        return get(x, y, 2*x/10);
    }

    function modifyC3(uint256 x, uint y) returns (uint) {
        return get(x, y, 5*x/10 - 3*x*y/10);
    }

    function get(uint256 x, uint256 y, uint256 z) returns (uint) {
        if (z < 1) {
            revert('divisionByZero');
        }
        return x*(x + y)/z;
    }
}
