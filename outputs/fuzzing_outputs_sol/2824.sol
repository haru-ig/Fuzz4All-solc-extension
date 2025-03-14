pragma solidity ^0.8.0;

contract CallerTest {
    function bad() pure public returns (uint, bool) {
        return (3, false);
    }

    function badMutated(uint, bool) public pure returns (bool) {
        return true;
    }

    function test() public pure returns (uint, bool) {
        return badMutated(0, true);
    }
}
