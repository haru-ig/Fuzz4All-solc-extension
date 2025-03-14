pragma solidity ^0.8.0;

contract Ownable {
    address private _owner;

    constructor () {
        _owner = msg.sender;
    }

    modifier onlyOwner {
        require(isOwner(), "Caller is not Ownable");
        _;
    }

    function isOwner () public view returns (bool) {
        return address(this) == _owner;
    }

    modifier onlyOwnerOrAdmin {
        require(isAdmin() || isOwner(), "Caller is neither an Ownable nor an Admin");
        _;
    }

    function isAdmin () public view returns (bool) {
        return msg.sender == address(this);
    }



    function changeOwner() public onlyOwnerAndAdmin {
        _owner = msg.sender;
    }

    function _transferOwnership (address newOwner) internal {
        require(isOwnerOrAdmin(), _owner);
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    event OwnershipTransferred (address indexed previousOwner, address indexed newOwner);
}

contract Administrable is Ownerable {
    struct Admin {
        address payable owner;
        bool enabled;
    }
    Admins public admins;

    event AdminChanged (address indexed previousAdmin, address indexed newAdmin);

    constructor () {
        admins.add(Admin({
            owner: payable(msg.sender),
            enabled: true
        }));
    }

    function add (Admin admin) public onlyOwner {
        admins.add(admin);
        emit AdminCreated(_owner, admin.owner);
    }

    function update (Admin admin, Admin admin1) public onlyOwner {
        if (isOwner() || admin1.enabled) {
            admin.owner = admin1.owner;
            admin1.enabled ^= admin1.enabled;
        }
        emit AdminUpdated(_owner, admin_to_address[msg.sender], admin.enabled);
    }

    function remove (Admin admin) public onlyOwner {
        admins.remove(admin);
        emit AdminRemove(_owner, admin.owner);
    }

    function isEnabled (Admin admin) public view returns (bool) {
        return admin.enabled;
    }

    function adminChanged (address newAdmin) public onlyOwner {
        emit AdminChanged(_owner, newAdmin);
        emit AdminChanged(newAdmin, address(0));
        admins.setAdmin(address(this));
    }

    function isOwnerOrAdmin () public view returns (bool) {
        return (isOwner() || isAdmin());
    }

    function admin_to_address (address addr) internal view returns (address payable) {
        return address payable(admins[addr].owner);
    }

    function isAdmin () public view returns (bool) {
        return admins[address(this)].enabled;
    }

    event AdminCreated (address indexed owner, address ownerAddress);
    event AdminUpdated (address indexed previousOwner, address indexed newOwner, bool enabled);
    event AdminRemove (address indexed owner, address ownerAddress);
}
pragma solidity ^0.8.0;
