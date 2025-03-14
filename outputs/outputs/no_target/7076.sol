pragma solidity ^0.8.0;
contract Test {
    event myEvent(uint a, uint b, bool flag);
    uint public id;
    bool public flag;
    constructor () { id = flag; }
    function setFlag(bool _flag) public {
        flag = _flag;
    }
}
