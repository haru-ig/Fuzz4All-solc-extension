pragma solidity ^0.8.0;
contract Semantic2Changed3 {
    function balance2() public pure {
        bool x = true;
        (address payable x, uint256 y, bytes memory z) = x;
    }
}
