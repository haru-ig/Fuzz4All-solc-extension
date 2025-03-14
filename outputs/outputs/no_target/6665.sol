pragma solidity ^0.8.0;
contract Mutated91 {
    function add() public pure returns (uint) {
        uint y = add(0) + 10;
        return y;
    }
}
