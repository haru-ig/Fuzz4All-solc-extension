pragma solidity ^0.8.0;
contract Semantics4 {
    function f(uint a, string memory b, uint) public pure returns(uint i) {
        i = a * 5;
    }
}
