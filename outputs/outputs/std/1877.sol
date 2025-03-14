pragma solidity ^0.8.0;
interface NonReentrantInterface {
    function nonReentrantCall() external returns(uint256);
}
contract ArrayInterface {
    function push(uint256 i) public {}
    function pop() public returns(uint256);
    function max() public view returns(uint256);
    function sum(uint256[] memory a) public view returns(uint256);
    function min(uint256[] memory a) public view returns(uint256);
    function set(uint256[] storage a, uint256 i, uint256 j) public;
    function get(uint256[] memory a, uint256 i) public view returns(uint256);
    function sort(uint256[] memory a) public;
}
contract Ownable is OwnableInterface {
    constructor() {
    }
    function ownerAddress() public view returns (address) {
        return owner();
    }
    function changeOwner(address newAddress_) public onlyOwner {
        emit ChangeOwner(newAddress_);
        owner = newAddress_;
    }
    event ChangeOwner(address newAddress);
    OwnableInternal { owner; }
}
contract OwnableInternal {
    address internal _owner;
    constructor(address newAddress_) {
        address oldAddress_ = owner;
        owner = newAddress_;
        emit NewOwner(oldAddress_, newAddress_);
    }
    event NewOwner(address oldAddress, address newAddress);
    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }
    modifier checkOwner() {
        require(msg.sender == owner);
        _;
    }
    modifier checkAddress(address theAddress) {
        require(this == theAddress);
        _;
    }
}
contract AddressCheckerInterface {
    function checkAddress(address theAddress) public view returns(bool isCorrect);
}
