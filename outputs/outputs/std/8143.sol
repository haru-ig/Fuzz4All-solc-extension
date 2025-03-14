pragma solidity ^0.8.0;
contract Convert {
}


pragma solidity ^0.8.0;


abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }
}


abstract contract ContextLibrary {
    function linkIdFor(address addr) internal pure returns (bytes32 linkId) {
        return bytes32(uint256(uint160(addr)));
    }
}




pragma solidity ^0.8.0;


abstract contract Ownable is Context {
    address payable private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    constructor () {
        address msgSender = _msgSender();

        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }


    function owner() public view virtual returns (address payable) {
        return _owner;
    }


    modifier onlyOwner() {
        require(isOwner());
        _;
    }


    function isOwner() public view virtual returns (bool) {
        return _msgSender() == _owner;
    }


    function renounceOwnership() virtual onlyOwner {
        address oldOwner = _owner;

        _setOwner(address(0));

        emit OwnershipTransferred(oldOwner, address(0));
    }


    function transferOwnership(address newOwner) virtual onlyOwner {
