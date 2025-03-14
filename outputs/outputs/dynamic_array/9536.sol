pragma solidity ^0.8.0;
contract Main2 {
    mapping(address => uint[]) public blackboxMapping;
    constructor () { uint[] memory blackboxes = new uint[](2);}
    function modifyBlackboxes (uint[] memory blackbox, uint num) public {
        for (uint i = 0; i < num; i++) {
            blackboxMapping[blackbox[1][1]] = 1;
        }
        return;
    }
}
