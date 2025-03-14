pragma solidity ^0.8.0;
contract EquivalentCall {
    uint256[5] _arr;
    uint256 _id;
    EquivalentCall(uint256[5][] memory _arr, uint256 _id) {
        _arr = _arr;
        this._id = _id;
    }
    function get(uint256 _id) public view returns (uint256) {
        return _arr[_id];
    }
}
contract Caller {
    address payable private contractAddr;
    address[] private addrArr;
    uint256 _id;
    uint256 _value;
    constructor (address payable _contractAddr) public {
        contractAddr = _contractAddr;
    }
    function send(uint256 _id, uint256 _value) public payable {
        for (uint256 i = 0; i < addrArr.length; i++) {
            EquivalentCall(contractAddr.balanceCall.value(address(this).balance)(_addrArr[i], _value), _id).get(_id);
        }
    }
}
