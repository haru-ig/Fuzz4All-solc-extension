pragma solidity ^0.8.0;
contract TokenERC721Enumerable is IERC721Enumerable {
    IERC721Enumerable public immutable ERC721Enumerable;

    constructor() {
        (bool success, bytes memory data) = address(0).functionDelegatecall("constructor()");
        require(success, "ERC721Enumerable: constructor call failed");


        ERC721Enumerable = tokenURI;

        (success, data) = address(0).functionDelegatecall("initialize(");
        require(success, "ERC721Enumerable: initialize call failed");
    }

    function tokenURI(uint256 tokenId) external view returns (string memory) {
        (bool success, bytes memory data) = address(0).functionDelegatecall("tokenURI(uint256)"(tokenId));
        require(success, "ERC721Enumerable: tokenURI(uint256) call failed");

        return string(data);
    }

    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256) {
        return ERC721Enumerable.tokenOfOwnerByIndex(owner, index);
    }

    function tokenByIndex(uint256 index) external view returns (uint256) {
        return ERC721Enumerable.tokenByIndex(index);
    }

    function totalSupply() external view returns (uint256) {
        return ERC721Enumerable.totalSupply();
    }
}
