pragma solidity ^0.8.0;
contract Array is IERC721 {
    uint256 totalItems;
    uint256 count;
    bytes4 internal constant _INTERFACE_ID = 0x01ffc9a7;
    address internal _masterWallet;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    constructor() {
        IERC721(0x01ffc9a7).transferFrom(_msgSender() payable, address(this), 1);
        IERC721(msg.sender).addBatch([1]);
    }

    function balanceOf(address owner) public view returns (uint256 balance) {
        return (IERC721(0x01ffc9a7).balanceOf(owner));
    }

    function approve(address to, uint256 tokenId) public returns (bool) {
        uint256 ownerId;
        (ownerId,) = IERC721(0x01ffc9a7).getApproved(tokenId);
        require(owner == ownerId);
        IERC721(0x01ffc9a7).setApprovalForAll(to, true);
        emit Approval(ownerId, to, tokenId);
        return (true);
    }

    function getApproved(uint256 tokenId) public view returns (address owner) {
        uint256 ownerId;
        (ownerId, ) = IERC721(0x01ffc9a7).getApproved(tokenId);
        return (ownerId);
    }

    function getOwnerOf(uint256 tokenId) public view returns (address owner) {
        address ownerId;
        (ownerId,) = IERC721(0x01ffc9a7).getApproved(tokenId);
        return (ownerId);
    }

    function transfer(address to, uint
