pragma solidity ^0.8.0;
contract Storage {
    address payable storageOwner;
    function setOwner(address newOwner) public {
        storageOwner = payable(newOwner);
    }
    function getOwner() public view returns (address payable) {
        return storageOwner;
    }
}
contract EtherReceiver {
    function setReceiver(address payable newReceiver) payable external {
    }
    function getReceiver() external view returns (address payable) {
        return msg.sender;
    }
}
