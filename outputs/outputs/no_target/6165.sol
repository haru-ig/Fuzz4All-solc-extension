pragma solidity ^0.8.0;
contract Reverts {
    function assert(bool test) internal view {
        require(test);
    }
}
