pragma solidity ^0.8.0;

contract Semantic0022 {
    function equal() public pure {
        uint x;
        assembly {
            x := 0
            x := 1
        }
    }
}

pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        uint x;
        x = 0;
        x = 1;
    }
}
