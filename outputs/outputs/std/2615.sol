pragma solidity ^0.8.0;






contract ERC721 is IERC721 {
    struct Item {

        address payable owner;


        address payable owner_prepaid;


        address to;


        bool to_prepaid;
    }


    struct Collection {
        mapping (uint256 => Item) public _items;
        uint256 owner_prepaid;
        uint256 limit;
    }


    mapping (uint256 => Collection) public collections;

    function _prepaid(uint256 tokenId, address payable recipient)
        internal
    {
        collections[collectionId][tokenId].owner_prepaid = recipient;
    }

    function _transfer(uint256 tokenId, address to_, uint256 recipient, bool to_)
        internal
    {
        if (address(msg.sender)!= to_) {
            collections[collectionId][tokenId].to_prepaid=true;
            collections[collectionId][tokenId].to = to_;
        }
        collections[collectionId][tokenId].owner = address(recipient);
    }

    function _safeTransfer(uint256 tokenId, address to, uint256 recipient
