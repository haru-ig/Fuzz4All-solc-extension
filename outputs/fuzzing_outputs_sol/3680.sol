pragma solidity ^0.8.0;
contract MutateSemantic7Caller5 {
    function modifyB7Mutate(uint256 x, uint y) pure public returns (uint) {

        uint z = x + y;
        z = x;
        return z;
    }
    function modifyB8Mutate(uint x, uint y) pure public returns (uint) {
        x = x + y;
        x = x + y;
        x = x + y;
        return x;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic7Caller6 {
    function modifyB7Mutate(uint256 x, uint y) pure public returns (uint) {

        uint z = x + y;
        z = x;
        return z;
    }
    function modifyB8Mutate(uint x, uint y) pure public returns (uint) {
        x = x + y;
        x = x + y;
        x = x + y;
        return x;
    }
}
