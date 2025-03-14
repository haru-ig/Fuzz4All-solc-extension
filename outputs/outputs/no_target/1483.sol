pragma solidity ^0.8.0;
contract Semantic0031 {
    function same() public pure {
        assembly {
            x := not(true)
        }
        bool x1;
        if (false) {
            x1 = true;
        }
    }
}
