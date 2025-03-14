pragma solidity ^0.8.0;
contract Mut {
    mapping(uint256 => uint256) array;
    uint256 value;
    uint256 constant ID = 2;
    constructor() {
        value = 1;
    }
    function muta() public {
        array[ID] = 1;
    }
    function mutate() public {
        array[ID] = 1;
    }
    function access() public view {
        return array[ID];
    }
}
