pragma solidity ^0.8.0;
contract Ownable {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        address msgSender = msg.sender;
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    function isOwner() public view returns(bool) {
        return msg.sender == _owner;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal virtual {
        require(newOwner!= address(0));

        emit OwnershipTransferred(_owner, newOwner);

        _owner = newOwner;
    }
}

contract Test {
    Proxy private _proxy;

    constructor(address proxy_) {
        _proxy = Proxy(proxy_);
    }

    function f() public view returns (address) {
        _proxy;
        address fooAddress = _proxy.getUnderlying('foo');
        return fooAddress;
    }
}
