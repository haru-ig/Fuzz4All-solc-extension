pragma solidity ^0.8.0;
interface IOwnable {
    function owner() external view returns (address);
}
contract Ownable is IOwnable {
    address private _owner;
    event OwnershipTransferred(address indexed from, address indexed to);
    constructor () {
        _setOwner(_msgSender());
    }
    function owner() public view override returns (address) {
        return _owner;
    }
    modifier onlyOwner () {
        _setOwner(_msgSender());
        _;
    }
    function _setOwner (address newOwner) internal {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}
