pragma solidity ^0.8.0;
library Lib {
    function addAndSub(bytes32 a, bytes32 b) public pure returns (bytes32) {
        return a + b - 2;
    }
}

pragma solidity >=0.8.0;
contract C {
    function pureAddAndSub (uint a, uint b) pure public returns (uint) {
        return a + b - 2;
    }
}
contract C {
    function pureAddAndSub (bytes32 a, bytes32 b) pure public returns (bytes32) {
        return a + b - 2;
    }
}
