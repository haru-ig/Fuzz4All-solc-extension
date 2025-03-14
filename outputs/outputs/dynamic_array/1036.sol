pragma solidity ^0.8.0;
contract ChangingContractState {
    uint256[] public _oldArray;
    event ClearOldArray();
    event SetOldArray(uint256[] _oldArray);
    constructor() {
        _oldArray.push(4);
    }
    function changeState() public returns(bool) {
        _oldArray.push(4);
        ClearOldArray();
        return true;
    }
}
