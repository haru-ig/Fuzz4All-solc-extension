pragma solidity ^0.8.0;
contract Modifier {
  constructor () {}

  function require(bool b) internal { require(b); }
  modifier onlyPayloadSize(uint256 newSize) { require(msg.data.length >= newSize+4); _; }

  function _checkArgsLength(uint256 length) internal view { require(msg.data.length >= length+4); }

  function _decodeArgs(bytes memory data, function(bytes memory sig, bytes memory data) public payable payablePayable) private returns (bytes memory sig, bytes memory data) {
    require(data.length >= 4);
    sig = abi.decode(data, (function(bytes memory) (msg.data.length == 0? "contractFallback" : "fallback")));
    require(sig.length == 2);
    _checkArgsLength(sig.length + (data.length - 2));

    return (sig, data.slice(sig.length));
  }
}
contract MutatedApp {
  function fallback() public payable payablePayable {
    require(msg.data.length == 0);
    require(payableFallbackF(msg.sender) == msg.value);
    require(msg.data[2] == 0);
    require(payableFallbackF(msg.data.length) == msg.value);
    require(msg.data[2] == 0);

    emit Fallback();
  }

  function payableFallbackF(address) public pure returns (uint256) {
    return 0;
  }
}


address owner = 0x0D2A5C940D6D31FCEB34350D70e87FAccD3c7b2D;
contract BasicToken {
  string private name_;
  string private symbol_;

  uint8 private decimals_ = 18;

  uint _totalSupply_;
  address _owner;
  mapping (address => uint) _balances;
  mapping (address => mapping (address => uint)) _allowed;
  uint private constant INITIAL_SUPPLY = 1000 * 10 * 10**uint(decimals_);


  constructor(string memory name, string memory symbol) {
    name_ = name;
    symbol_ = symbol;
  }


  function name() public view returns (string memory) {
    return name_;
  }

  /**
   * @dev Returns the symbol of the token, usually a shorter
