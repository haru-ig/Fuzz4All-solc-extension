pragma solidity ^0.8.0;
contract Main5 {
    mapping(uint8 => bool) public blackboxArray;
    constructor () { blackboxArray[0] = true;}
    function modifyBlackboxes (bool calldata array, address[] memory addresses, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            array[addresses.length - i - offset] =! array[addresses.length - i - offset];
            addresses[addresses.length - i - offset] = msg.sender;
        }
    }
}
