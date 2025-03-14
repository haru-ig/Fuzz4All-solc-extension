pragma solidity ^0.8.0;
contract ArrayMutations {
    bool f = true;
    bool g = true;
    function test() public returns (bool, bool) {
        return (f, g);
    }
}
