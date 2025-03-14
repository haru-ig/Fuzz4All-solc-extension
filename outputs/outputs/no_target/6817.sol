pragma solidity ^0.8.0;
contract TestMutated922 {
    function add(uint a, uint b) public pure returns (uint) {
        return add(a, b);
    }

    function sub(uint a, uint b) public pure returns (uint) {
        return (a) > (b? a - b : b - a);
    }
}
