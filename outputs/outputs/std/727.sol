pragma solidity ^0.8.0;
interface MinterInterface {}
contract SimpleMinter {
  uint constant immutable MIN_SUPPLY = 250000 * (1 ether);
  MinterInterface public minter =
    MinterInterface(msg.sender);

  constructor() {
    require(minter.mint(MIN_SUPPLY) == 0, "Bad Minter address");
  }

  function mint(uint amount) public returns (bool success) {
    require(amount >= MIN_SUPPLY, "Bad mint amount");
    minter.mint(amount);
    return true;
  }

  function burn(uint amount) external returns (bool success) {
    require(minter.burn(amount) == 0, "Bad minter");
    return true;
  }
}


contract ERC20Core is Context {
  using SafeMath for uint256;

  string private _name;
  string private _symbol;
  bool private _isInitialized;


  mapping(address => uint256) internal _balances;

  mapping(address => bytes32) internal _accountTokenHolders_;
  mapping(address => uint256) internal _userMintAmount_;
  mapping(address => uint256) internal _supply_;
  mapping(uint256 => address) internal _idToAddress_;


  mapping(uint256 => uint256) internal _mintedTokenIdsByAccountId_;
  mapping(bytes32 => uint256) internal _accountIdsByTokenId_;
  mapping(bytes32 => uint256) internal _accountIdsByTokenId2_;


  constructor(string memory name_, string memory symbol_) {
    require(_name == address(0), "Init called twice");
    _name = name_;
    _symbol = symbol_;
    _isInitialized = true;
  }


  function _setTokenOwner(address account, string memory name, string memory symbol)
    internal
  {
    require(account!= address(0), "Bad token holder address");

    bytes32 tokenId = keccak256(abi.encodePacked(account, name, symbol));
    _accountIdsByTokenId[tokenId] |= _isTokenOwner
