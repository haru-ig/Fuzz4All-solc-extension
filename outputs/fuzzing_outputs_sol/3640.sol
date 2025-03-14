pragma solidity ^0.8.0;
contract MutateSemantic5Fallback3 {
    uint x;
    fallback public() pure internal {
        x=5;
    }

    function modifyC(uint256 x, uint y) pure public returns (uint) {
        return 2*(x) + y;
    }
}
contract MutateSemantic6Caller3 {
    uint x;
    fallback public() pure internal {
        x=6;
    }

    function modifyC(uint256 x, uint y) pure public returns (uint) {
        return 2*(x) + y;
    }
}
