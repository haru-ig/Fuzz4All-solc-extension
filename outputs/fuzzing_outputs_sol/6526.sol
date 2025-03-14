pragma solidity ^0.8.0;
contract C
{
    function m(uint[1] memory data) public {
        m(data);
    }
    function m(uint[2] memory data) public pure {}
}
