pragma solidity ^0.8.0;
contract D {
    uint[] public names;
    mapping(uint => address) public users;
    uint public count = 0;
    constructor() {
    }
    function assignAddress(uint _uid, address _to) {
        users[_uid] = _to;
    }
}
