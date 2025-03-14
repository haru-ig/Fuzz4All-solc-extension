pragma solidity ^0.8.0;
interface IERC223Receiver {
  function onERC223Received(address _operator, address from, uint256 _tokenId, bytes memory _data) external returns (bytes4);
}

pragma solidity ^0.8.0;
interface IERC721 is IERC165 {
  event Transfer(address indexed operator, address indexed from, address indexed to, uint256 indexed tokenId);
  event Approval(address indexed operator, address indexed from, address indexed to, uint256 indexed tokenId);
  event ApprovalForAll(address indexed operator, address indexed owner, bool _approved);

  function approve(address to, uint256 tokenId) external;
  function getApproved(uint256 tokenId) external view returns (address);
  function setApprovalForAll(address operator, bool _approved) external;
  function isApprovedForAll(address owner, address operator) external view returns (bool);

  function transferFrom(address from, address to, uint256 tokenId) external;

  function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory _data) external;

  function safeTransferFrom(address from, address to, uint256 tokenId) external;

  function transferFrom(address from, address to, uint256 tokenId) external;

  function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory _data) external;

  function safeTransferFrom(address from, address to, uint256 tokenId) external;

  function supportsInterface(bytes4 interfaceId) external view returns (bool);
}



contract ERC721_A {
  address public _address;
  string public _tokenName;
  string public _tokenSymbol;

  mapping(address => mapping(address => uint256)) public _allowances;

  constructor() {
    _tokenName = "token";
    _tokenSymbol = "tok";
  }

  modifier ownerOf(uint256 token_id) {
    require(ownerOf(token_id) == msg.sender, "ERC721: sender must own the token");
    _;
  }

  modifier name(string memory token_name) {
    require(token_name!= "", "ERC721: token name is empty");

    _tokenName = token_name;

    _;
  }

  modifier symbol(string memory token_symbol) {
    require(
      token_symbol!= "",
      "ERC721: token symbol is empty"
    );

    _tokenSymbol = token_symbol;

    _;
  }

  function name() public view virtual returns (string memory) {
