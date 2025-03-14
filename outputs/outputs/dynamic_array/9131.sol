pragma solidity ^0.8.0;
interface ERC1155Receiver {


    function onERC1155Received(
        address operator,
        address from,
        uint256 tokenId,
        uint256 amount,
        bytes memory data
    ) external returns (bytes4);
}

contract Ownable {
    address payable public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {}


    modifier onlyOwner() {
        require(isOwner(), "Only the owner can call this method");
        _;
    }


    function isOwner() public view returns (bool) {
        return _msgSender() == owner;
    }


    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(owner, address(0));
        owner = address(0);
    }


    function transferOwnership(address payable newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }


    function _transferOwnership(address payable newOwner) internal {
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}
