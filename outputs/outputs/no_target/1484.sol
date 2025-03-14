pragma solidity ^0.8.0;
contract Semantic0020 {
    function same() public pure {
        uint i;
        i = 0;
        if (i!= b"some string".sub(0)) {
            revert();
        }
    }
}
