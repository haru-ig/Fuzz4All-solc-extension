pragma solidity ^0.8.0;

interface IERC721Enumerable is IERC721 {
    function length() public view returns (uint256);
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);
    function tokenURI(uint256 tokenId) external view returns (string memory);
}
pragma solidity ^0.8.0;
import './IERC721Enumerable.sol';

import './IERC721.sol';

import './IERC721Burnable.sol';

contract ERC721 is IERC721, IERC721Enumerable, IERC721Burnable {

    mapping(uint256 => address) private _owners;

    uint256 private _totalSupply;

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    event Burn(address indexed burner, uint256 indexed tokenId);

    modifier onlyOwnerOf(uint256 tokenId) {
        require(_exists(tokenId), 'token does not exist');
        address owner = _owners[tokenId];
        require(owner == msg.sender, 'caller is not the owner of the token');
        _;
    }


    constructor() {
        _owners[0] = _msgSender();
        _totalSupply = 1;
    }
    /****************
