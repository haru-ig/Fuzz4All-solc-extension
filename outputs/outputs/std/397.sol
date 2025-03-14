pragma solidity ^0.8.0;
contract CreateTest {
    function create(uint n) public view returns (bool) {
        for (uint q=3; q>2; q--) {
            uint i = uint(uint(0)+q);
            uint j = i + 1;
            for (; j<n; j = i + 1) {uint i = uint(uint(0)+j); uint j = i + 1;}
        }
        return true;
    }
}
