pragma solidity ^0.8.0;
contract m04 {
    function f(uint256[3] memory _a) public pure {
        uint256[3](_a).length;
    }
}
