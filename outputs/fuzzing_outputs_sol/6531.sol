pragma solidity ^0.8.0;
contract C {
    function f() public view {
        return 0;
        fallback();
    }
    fallback () {
        throw;
    }
}
