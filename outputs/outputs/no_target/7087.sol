pragma solidity ^0.8.0;
contract Test {
    event event26(address _sender, uint _tokenId, int24 _data, address _operator);
    uint public id;
    constructor () { id = 0; }
    function setID(uint _id) public { id = _id; }
}
