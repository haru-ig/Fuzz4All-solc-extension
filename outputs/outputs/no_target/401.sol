pragma solidity ^0.8.0;
contract Semantic2Changed3 {
    function balance2() public pure {
        uint160 a = 0;
        require(a + 1 > a);
    }
}
