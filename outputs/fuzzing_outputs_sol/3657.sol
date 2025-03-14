pragma solidity ^0.8.0;
contract MutateSemantic6Caller3 {
    function modifyC7(uint256 x, uint y) pure public returns (uint) {
        return 2*((x + 1)*(x + y) + 3);
    }
    function modifyC8(uint256 x, uint y) pure public returns (uint) {
        return 7*(x + (y - 4) + 5);
    }
    function modifyC9(uint256 x, uint y) pure public returns (uint) {
        return 9*(x + ((x - y)*(x - y) + y) + 17);
    }
}
