pragma solidity ^0.8.0;
interface IERC721Owner {
    function owner() external view returns (address);
}
pragma solidity ^0.8.0;
library IERC165 {
  function supportsInterface(bytes4 interfaceID) external view returns (bool);
}
pragma solidity ^0.8.0;

contract ERC721Enumerable is IERC721Enumerable, IERC165 {
  uint256 private _totalSupply;
  mapping(uint256 => string) private _tokenURIs;
  mapping(uint256 => address) private _tokenOwners;




  function supportsInterface(bytes4 interfaceID) public view virtual override(IERC165, IERC721Enumerable) returns (bool) {
    return interfaceID == type(IERC721Enumerable).interfaceID || interfaceID == type(IERC165).interfaceID;
  }


  function totalSupply() public view virtual override returns (uint256) {
    return _totalSupply;
  }


  function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
    require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

    string memory baseTokenURI = _baseURI();
    return bytes(baseTokenURI).length > 0
    ? string(abi.encodePacked(baseTokenURI, tokenId.toString()))
      : "";
  }


  function baseURI() public view virtual override returns (string memory) {
    return "";
  }


  function balanceOf(address owner) public view virtual override returns (uint256) {
    uint256 balance = _balances[owner];
    return balance == 0?
