pragma solidity ^0.8.0;
contract Test {

    uint[5] array;

    function add() public {
        array.push(1);
        emit TestAdded();
    }

    event TestAdded (uint value);
}
