pragma solidity ^0.8.0;
library Lib{
    address private _owner;
    uint256 private _count;
    uint256 private _limit;
    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }


    constructor(uint256 limit) {
        _count = 0;
        _limit = limit;
    }

    modifier restrictedFrom(address sender) {
        require(sender!= _owner, "Restricted");
        _;
    }

    function setLimit(uint256 limit) public restrictedFrom(_owner) {
        _limit = limit;
    }

    function addOwner(address newAddress) public restrictedFrom(_owner) onlyOwner {
        _owner = newAddress;
    }

    function getMembershipList() public view returns (address[]) {

        uint256 numMembers = _count;
        address[] memory newList = new address[](numMembers);
        require(numMembers <= _limit, "Limit exceeded");
        for (uint256 i = 0; i < numMembers; i++) {
            newList[i] = address(uint160(uint256(i)));
        }
        return newList;
    }

    function getMemberCount() public view returns (uint256) {
        return _count;
    }

    function addMember(address newMember) public restrictedFrom(_owner) {
        _count++;
        uint256 newMemberID = address(uint1
