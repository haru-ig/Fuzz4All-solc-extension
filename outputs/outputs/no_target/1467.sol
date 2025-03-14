pragma solidity ^0.8.0;
contract Semantic0031 {
    uint x = 500;
    function same() public pure {
        if (false == true) {
            return;
        }
        x = 52567875;
    }
}
