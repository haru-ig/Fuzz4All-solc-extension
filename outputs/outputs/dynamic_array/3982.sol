pragma solidity ^0.8.0;
contract C {
    uint[] public s1 = [1, 2, 3, 4];
    uint[] public s2 = [1, 2, 3, 4];
    function() public override {
        s2 = [5, 4, 3, 2];
    }
}
