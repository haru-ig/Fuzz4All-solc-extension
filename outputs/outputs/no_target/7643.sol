pragma solidity ^0.8.0;
contract Z {
    uint public immutable z = 5;
    function f() public pure {
        z += 1;
    }
}
