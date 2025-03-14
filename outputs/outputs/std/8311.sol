pragma solidity ^0.8.0;
contract ArrayMutations3 {
    address[ ] public array;
    function addNewElement() public {
        array.push(msg.sender);
    }
    function changeElement() public {
        address senderAddr = msg.sender;
        uint senderIndex = array.length;
        array[senderIndex] = senderAddr;
    }
}
