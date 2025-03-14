pragma solidity ^0.8.0;
library ArrayLib {
    function sum(uint[] memory arr) public pure returns (uint sum) {
        uint i;
        for(i = 0; i < arr.length; i++)
            sum += arr[i];
    }
}


pragma solidity ^0.7.5;

contract IERC721Token {

  event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);


  event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);


  event ApprovalForAll(address indexed owner, address indexed operator, bool approved);


  function balanceOf(address owner) public view returns (uint256 balance);


  function ownerOf(uint256 tokenId) public view returns (address owner);


  function safeTransferFrom(address from, address to, uint256 tokenId) public returns (bool success);


  function ownerOf(uint256 tokenId) external view returns (address owner);

  /**
  * @dev Safely transfers `tokenId` token from `from` to `to`.
  * @param from The address to transfer from.
  * @param to The address to transfer to.
  * @param tokenId The token to be transferred.
  * @dev Returns the success of the transfer. Note that while this call emits an Approval event, this is not required as
  * ERC721 allows users to call {approve} or {setApprovalForAll} for any
