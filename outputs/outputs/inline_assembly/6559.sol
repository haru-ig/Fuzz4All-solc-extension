pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    uint256 lastContactTime;
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 lastTimeCheckedForFirstContact;
    function doSomething() public {
        a = a + 1;
        b = b + 2;
        c = c + 3;
        if (lastContactTime == 0 || block.timestamp < lastTimeCheckedForFirstContact + 60 * 60) {
            emit AContacted();
        } else {
            lastTimeCheckedForFirstContact = block.timestamp;
        }
    }
    event AContacted();
}
contract MixedContactsExample56 {
    uint256 numberOfPeople;
    bool isActive = true;
    bool isFirstContact = true;
    mapping (uint256 => address) payers;
    mapping (uint256 => bool) contacts;
    address payersAddress;
    constructor() public {
    }

    function send() public {
        if (!isActive ||!contacts[msg.sender]) {
            return;
        }
        emit Contacted(msg.sender);
        contacts[msg.sender] = false;
        payers[msg.sender].transfer(address(msg.sender).balance);
    }
    event Contacted(address sender);
}
