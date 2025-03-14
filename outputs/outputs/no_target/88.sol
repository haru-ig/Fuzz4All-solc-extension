pragma solidity ^0.8.0;
contract IERC223Token {
  function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IERC223Recipient {
  function onERC223Received(address operator, address from, address to, uint256 id, bytes calldata data);
}
contract IERC637RecipientRecipient {
  function onERC637Received(uint256 id, IContextToken _cToken, bytes calldata _data);
}
interface IERC721Received {
  function onERC721Received(uint256 id, IContextToken _token, address operator, bytes calldata data);
}

pragma solidity ^0.8.0;

enum IERC223TokenType {ERC637, ERC721, ERC1155}


contract ERC223TokenRecipient {

  function transfer(address to, uint256 value) virtual public;

  function transferFrom(address from, address to, uint256 value) virtual public;

  function onERC223Received(address from, address to, uint256 id) virtual public returns(bool);

  function URI(uint256 tokenId) virtual public returns (string memory);

  function safeTransferFrom(address from, address to, uint256 tokenId) virtual public;
}

pragma solidity ^0.8.0;

contract SendERC223Token {


  address _recipient;

  uint256 _tokenId;


  constructor(address _recipient) {
    _setupRecipient(_recipient);
  }


  function _setupRecipient(address _recipient) internal {
    _recipient = _recipient;
  }

  /* This method transfers the token to recipient
