pragma solidity ^0.8.0;
contract NewSolidity {
    event E();
    address to;
    mapping(address => bool) public m;
    function x() public {
        if (m[to]) {
            emit E();
        }
    }
}
