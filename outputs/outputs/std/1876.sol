pragma solidity ^0.8.0;
contract ModifiableStorage {
    address private immutable _owner;

    string private _name;

    mapping(address => bool) private _allowed;

    constructor(string memory name) {
        _owner = msg.sender;
        _name = name;
    }

    function modifyOwner() public {
        require(msg.sender == _owner, "Only owner can modify owner");
        address newOwner = msg.sender;
        emit OwnershipModified(this, _owner, newOwner);
        _owner = newOwner;
    }

    function modifyName() public {
        require(msg.sender == _owner, "Only owner can modify name");
        string memory newName = _getName();
        emit NameModified(this, _name, newName);
        _name = newName;
    }

    function ownerAddress() public view returns (address) {
        return _owner;
    }

    function allowed(address owner) public view returns (bool) {
        return _allowed[owner];
    }

    function modifyAllowed(address owner, bool allowed) public {
        require(msg.sender == owner, "Only owner can modify allowed");
        _allowed[owner] = allowed;
    }

    function _getName() internal view returns (string memory) {
        return _name;
    }
}
