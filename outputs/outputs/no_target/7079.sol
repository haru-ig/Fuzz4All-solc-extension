pragma solidity ^0.8.0;
contract Test2 {
    event event177(uint a);
    event event137(uint a);
    event event268(uint a);
    event event326(uint a);
    uint public id;
    constructor () { id = 0; }
    function setID(uint _id) public {
        id = _id;
    }
}
