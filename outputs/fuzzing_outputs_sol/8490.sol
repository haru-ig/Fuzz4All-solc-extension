pragma solidity ^0.8.0;
contract CallerExample6 {
    uint public constant value = 30;
    function add(uint x) public pure returns (uint) {
        return x + value;
    }
}
