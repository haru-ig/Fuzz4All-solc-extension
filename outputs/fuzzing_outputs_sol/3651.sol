pragma solidity ^0.8.0;
contract MutateSemantic6Caller1 {
}
pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 {
    function modifyC4(uint256 x, uint y) pure public returns (uint) {
        return x*(x + y);
    }
    function modifyC5(uint256 x, uint y) pure public returns (uint) {
        return (2*x)*y;
    }
    function modifyC6(uint256 x, uint y) pure public returns (uint) {
        return (5*x)*y;
    }
}
