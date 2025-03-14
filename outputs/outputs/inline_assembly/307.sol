pragma solidity ^0.8.0;
contract F1 {
    using Addition for uint;
    function add (uint a, uint b) public pure returns (uint) {
        return a.add(b);
    }
}
