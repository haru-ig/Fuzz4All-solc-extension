pragma solidity ^0.8.0;
contract D {
    uint storage names;
    constructor() public {}
    function addName() public {
        names ++;
    }
    function readName() view public returns(uint) {
        return names;
    }
}
uint[] ids;
uint[] names;

function getLength() view public returns(uint) {
    return names.length;
}
function getData() view public returns(uint) {
    return names;
}
function test(D d) view public {
    name[] memory _names;
    uint count;
    uint size = d.readName();
    if (size > 0) {
        d.callDelegate(0);
    }
    count = 0;
    for (uint i = 0; i < size.value; i ++) {
        _names[count] = names[i];
        count++;
    }










}
