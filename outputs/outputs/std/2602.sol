pragma solidity ^0.8.0;


contract TestArray is IERC721Enumerable {
    uint256[] private _tokenIds;

    constructor(uint256[] memory tokenIds) {
        _tokenIds.push(...tokenIds);
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        return "Not supported";
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "";
    }

    function totalSupply() public pure virtual override returns (uint256) {
        return _tokenIds.length;
    }

    function ownerOf(uint256 tokenId) public view virtual override returns (address) {
        return address(uint160(_tokenIds(tokenId)));
    }
