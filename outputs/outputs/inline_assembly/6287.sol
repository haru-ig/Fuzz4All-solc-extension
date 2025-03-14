pragma solidity ^0.8.0;
contract SimpleAssembly {
    function doSome(uint256 x) {
        assembly {

            mstore(0x0, x)

            x := mload(0x0)
        }
        return x;
    }
}




pragma solidity >=0.7.0 <0.9.0;

import "../utils/Context.sol";


abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    constructor() {
        address msgSender = _msgSender();
        _setOwner(msgSender);
    }


    function owner() public view virtual returns (address);


    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }


    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _setOwner(address(0));
    }


    function transferOwnership(address new
