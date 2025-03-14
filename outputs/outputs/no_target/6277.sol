pragma solidity ^0.8.0;
contract MyContract {
    address public admin;
    address public user;

    event AdminEvent(address indexed sender, uint indexed value);
    event UserEvent(address indexed sender, uint indexed value);

    constructor (address _admin) {
        admin = _admin;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin);
        _
    }

    function onlyUser() {
        user = msg.sender;
        _
    }

    function updateAdmin(address _newAdmin) onlyAdmin public {
        admin = _newAdmin;
    }

    function updateUser(address _newUser) onlyUser public {
        user = _newUser;
    }

    function getAddress(uint i) public view returns (address) {
        if (i == 0) {
            return admin;
        } else {
            return user;
        }
    }

    function myFunction() public view {
        uint i = 3;
        i += i + getAddress(0)!= 0? (uint(address(this)) / 1e10) : 1;
    }
}
