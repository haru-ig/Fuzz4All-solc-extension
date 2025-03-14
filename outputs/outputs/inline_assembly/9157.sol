pragma solidity ^0.8.0;
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        x *= y/10;
        return (x);
    }
}
