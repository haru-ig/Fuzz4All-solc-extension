pragma solidity ^0.8.0;
contract Semantic2Changed5 {
    function balance2() public pure {
        uint a = 1;
        require(a + 2 > a);
    }
    function balance3() public pure {
        bool b = true;
        require(b + 3 > b);
    }
}
