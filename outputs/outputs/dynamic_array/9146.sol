pragma solidity ^0.8.0;
contract ERC2615StorageArrays {

    uint8 constant ID = 88;
    address public owner;
    mapping(uint256=>string) public tokenToNftUri;
    IERC20 token;
    uint256 public totalSupply;

     mapping(address=>uint256[]) public ownedNfts;
     emit LogOwnershipTransferred(msg.sender, address(0));

     function tokenURI(uint256 tokenId) public view returns (string memory);
    function ownerOf(uint256 tokenId) public view returns (address);

     function _fetchNFTUri(uint256 tokenId) internal returns (string memory) {
        token = IERC20(address(token));
        return tokenToNftUri[tokenId];
    }

     function _transfer(address newOwner, uint256 tokenId) private {
        string memory msg = string(abi.encodePacked("Transfer of token tokenId=", tokenId," from account ", address(this)));
        emit Transfer(this, token.ownerOf(tokenId), newOwner, msg);
        address(0).balance;
    }

     function _mint(address mintTo, uint256 tokenId) private {
        string memory msg = string(abi.encodePacked("Creation of token tokenId=", tokenId," from ", address(this)," for sale using tokenURI:"));
        emit Transfer(address(this), mintTo, mintTo, msg);
    }

     function _burn(address burnFrom,
