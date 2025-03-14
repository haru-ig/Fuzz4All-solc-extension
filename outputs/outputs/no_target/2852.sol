pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage {
    uint b;

    modifier m() {
        b = 88;
        yield;
        b = 0xafac;
    }

    function set() public m {
        b = 1;
        b = 0x1;
    }
    function get() public view returns (uint) {
        b = 1;
        return b;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract complex {
    struct storage {
        address owner;
        uint8 num;
        mapping(AddressToAddress) users;
    }

    struct AddressToAddress {
        address userAddr
        uint256 amount
    }
    address _owner;

    mapping(address => storage) private storageByAddress;

    modifier notMyself() {
        require(!msg.sender.isContract());
        _;
    }

    function create(
        address _newOwner,
        uint8 _newNum
    ) public notMyself {
        storageByAddress[_newOwner] = storage(_newOwner, _newNum, new mapping(AddressToAddress));
        require(!storageByAddress[_newOwner].users[msg.sender]);
        storageByAddress[_newOwner].users[msg.sender] = AddressToAddress(msg.sender, 1);
    }

    function withdraw() public notMyself {
        if (address(storageByAddress[msg.sender].owner)!= msg.sender) {
            return;
        }
        storageByAddress[msg.sender].owner.transfer(storageByAddress[msg.sender].users[msg.sender].amount);
        delete storageByAddress[msg.sender].users[msg.sender];
    }
}
