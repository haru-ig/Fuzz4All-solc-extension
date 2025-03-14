pragma solidity ^0.8.0;
contract Fabric2 {
    uint[] public arr;
    bool public added;

    function init() public {
        for (uint i = 0; i < 32; i++) {
            arr.push(uint8(i));
        }
    }

    function add() public {
        toAdd = msg.sender;
        added = true;
        z = new Fabric2();
        z.init();
    }
}
