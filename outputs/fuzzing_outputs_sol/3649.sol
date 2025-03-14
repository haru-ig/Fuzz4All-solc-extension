pragma solidity ^0.8.0;
contract MutateSemantic5Caller2 {
    function modifyC1(uint256 x, uint y) pure public returns (uint) {
        return x*(x + y);
    }
    function modifyC2(uint256 x, uint y) pure public returns (uint) {
        return (2*x)*y;
    }
    function modifyC3(uint256 x, uint y) pure public returns (uint) {
        return (5*x)*y - (3*x*y);
    }
}
