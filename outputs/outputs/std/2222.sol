pragma solidity ^0.8.0;
contract MutatorN {
    function change(uint256 _v) public {
        x = _v;
    }
    uint x;
}
