pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract ERC721TokenURI {
  mapping(uint256 => string) private tokenURIs;

  constructor() {

  }

  function _setTokenURI(uint256 tokenId, uint256 length, bytes memory data) private {
    require(data.length == length, 'Invalid Token URI length!');
    tokenURIs[tokenId] = bytes(string(data));
  }

  function getTokenURI(uint256 tokenId) public view returns (string memory) {
    require(exists(tokenId), 'Token not exists!');
    return tokenURIs[tokenId];
  }

  function exists(uint256 tokenId) public view returns(bool){
    return tokenURIs[tokenId]!= address(0);
  }
}
