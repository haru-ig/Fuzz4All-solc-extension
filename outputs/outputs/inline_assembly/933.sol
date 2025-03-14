pragma solidity ^0.8.0;
contract Incrementer {
    uint constant _increment = 1;
    function increment() public pure returns(uint) {
        Incrementer.increment();
        return _increment;
    }
    function increment_internal() internal pure returns(uint) {
        return _increment;
    }
}

prado solidity ^0.8.0;
contract Ownable {
    address _owner;
    address[] private _admins;
    event NewAdmin(address);
    constructor() {
        _owner = msg.sender;
        _admins.push(_owner);
    }
    function changeAdmin(address newAdmin) public onlyOwner () {
        require (newAdmin!= address(0));
        _admins.push(newAdmin);
        emit NewAdmin(newAdmin);
    }
    function removeAdmin(address oldAdmin) public onlyOwner () {
        require (oldAdmin!= address(0));
        _admins.remove(oldAdmin);
    }
    modifier onlyOwner() {
        require(isOwner());
        _;
    }
    function isOwner() public view returns(bool) {
        return msg.sender == _owner;
    }
}
contract TestOwned is Ownable {
    bool public isOwner = false;
    modifier onlyOwner() {
        require(isOwner);
        _;
    }
}
contract TestIsAdmin is Ownable {
    bool public isAdmin = false;
    modifier onlyAdmin() {
        require(isAdmin);
        _;
    }
}

pragma solidity ^0.8.0;
contract TestContracts is Ownable {

    uint256 constant
