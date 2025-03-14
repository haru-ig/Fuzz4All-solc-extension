pragma solidity ^0.8.0;
contract Example9 {
    function example() public {
        fallback();
    }
    function fallback() public pure {
        assembly {
            return
        }
    }
}
