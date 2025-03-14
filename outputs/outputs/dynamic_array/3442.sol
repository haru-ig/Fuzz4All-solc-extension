pragma solidity ^0.8.0;
contract C2 {
    uint[] public v2;
    function multiply(uint a, uint b) public payable {
        v2.push(2 * a);
        v2.push(2 * b);
    }
}
