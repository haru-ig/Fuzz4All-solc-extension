pragma solidity ^0.8.0;
contract C {
    uint256[] public bArray;
    mapping(uint256 => uint256) private bMapping;
    function mutate() {
        bArray.push(bMapping[1]);
    }
}
