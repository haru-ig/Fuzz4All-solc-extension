pragma solidity ^0.8.0;
contract MyContract {
    uint[] public array;
    function setArray(uint[] memory _array) public;
    function getArray() public view returns (uint[56] memory);
    function setArray() public;
    function add(uint[3] memory a, uint[1] memory b) public view returns(uint[4] memory);
}
