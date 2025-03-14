pragma solidity ^0.8.0;
contract ModdedSolidity {
    address to;
    mapping(address => bool) public modified;
    event E();
    constructor(address _a) { to = _a; }
    function x() public {
        if (m[to]) {
            emit E();
            modified[to] = true;
        }
    }
}
