pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;


contract ERC721 {
    mapping(uint256 => string) private _tokenURIs;

    constructor(string memory tokenURI) {
        _setTokenURI(0, tokenURI);
    }


    function supportsInterface(bytes4 interfaceID)
        public
        view
        virtual
        override(ERC721, ERC165)
        returns (bool)
    {
        return super.supportsInterface(interfaceID)
            || interfaceID == type(IERC721Metadata).interfaceId;
    }


    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721: URI query for nonexistent token");

        return _tokenURIs[tokenId];
    }


    function _setTokenURI(uint256 tokenId, string memory tokenURI) internal virtual {
        require(exists(tokenId), "ERC721: URI set of nonexistent token");

        _tokenURIs[tokenId] = tokenURI;
    }


    function _unsetTokenURI(uint256 tokenId) internal virtual {
        require(exists(tokenId), "ERC721: URI reset of nonexistent token");

        delete _tokenURIs[tokenId];
    }


    function exists(uint256 tokenId) public view virtual override returns (bool) {
        return _exists(tokenId);
    }


    function requireIsOwner(uint256 tokenId) internal view virtual {
        require(exists(tokenId), "ERC721: requireIsOwner failed");
        require(ownerOf(tokenId) == msg.sender, "ERC721: owner failed");
    }

    /** @dev Returns whether `tokenId` exists. This function works even though `exists` returns data by performing a single read and a single write. This means that, if this function is called on token `A`, `A` will be returned. This can be used
