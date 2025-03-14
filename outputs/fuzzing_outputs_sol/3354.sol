pragma solidity ^0.8.0;
contract S {
    function fallback() public pure {
        throw;
    }
}
