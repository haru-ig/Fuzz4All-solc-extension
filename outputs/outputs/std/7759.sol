pragma solidity ^0.8.0;
contract Orig_Orel {
    address private owner;
    event MyEvent(address indexed owner);
    constructor() {
        owner = msg.sender;
    }
    function() public payable{ msg.sender.send(0.1 ether); emit MyEvent(msg.sender); }
}
contract ContractorOld {
    constructor() public view {

    }
}
contract Contractor_Orel {
    address private owner;
    event MyEvent(address indexed owner);
    constructor() {
        owner = msg.sender;
    }
    function() public payable{ msg.sender.send(0.1 ether + uint256.max); emit MyEvent(msg.sender); }
}
