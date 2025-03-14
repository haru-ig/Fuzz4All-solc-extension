pragma solidity ^0.8.0;
contract SomeFallback {
    event F (uint256 _x);
    function f(uint256 a, uint256 b) public {
        emit F(_x);
    }
}
