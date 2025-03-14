pragma solidity ^0.8.0;
contract Main {
    struct BlackboxArray { uint elements; }

    mapping(address => BlackboxArray[]) public blackboxArrays;
    constructor () { blacklistArrays[msg.sender][0].elements = 0;}
    function modifyBlackboxes (BlackboxArray[] memory blackboxArrays, uint offset, uint num) public {
        for (uint i = 0; i < num; i++) {
            blackboxArrays[blackboxArrays.length - i - offset].elements++;
        }
    }
}
