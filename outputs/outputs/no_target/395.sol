pragma solidity ^0.8.0;
contract Semantic2Changed3 {
    function balance2() public pure {
        bool x = true;
        uint256 y;
        bytes17 z = x < 17? 17 : 34;
    }
}
