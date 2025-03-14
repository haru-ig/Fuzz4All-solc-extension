pragma solidity ^0.8.0;
contract Semantic2Changed4 {
    function balance3() public pure {
        uint a = 0;
        require(a + 1 > a);
    }
}
