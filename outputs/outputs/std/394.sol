pragma solidity ^0.8.0;
contract CreateTest {
    constructor() public {}
    function create(uint n) public {
        for (uint q=3; q>2; q--) {
            uint i = uint(uint(0)+q);
            uint j = i + 1;
            for (; j<n; j = i + 1) {uint i = uint(uint(0)+j); uint j = i + 1;}
        }
    }
}
