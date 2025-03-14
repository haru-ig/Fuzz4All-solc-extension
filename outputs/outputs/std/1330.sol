pragma solidity ^0.8.0;


contract Mutators {
  address public owner;
  constructor() {
    owner = msg.sender;
  }

  bool private _privateBool;
  bool internal _internalBool;
  uint8 private _privateUint8;
  uint8 internal _internalUint8;
  uint _privateUint;
  uint internal _internalUint;
  int _privateInt;
  int internal _internalInt;
  address _privateAddress;
  address internal _internalAddress;
  bytes32 _privateBytes32;
  bytes32 internal _internalBytes32;
  string _privateString;
  string internal _internalString;
  uint32 _privateUint32;
  uint32 internal _internalUint32;
  bytes4 _privateBytes4;
  bytes4 internal _internalBytes4;
  bytes _privateBytes;
  bytes internal _internalBytes;
  bool private _privateBool2;
  bool internal _internalBool2;

  event LogBoolean(bool aBool);
  event LogInt(int aInt);
  event LogUint(uint aUint);
  event LogHex(bytes32 aHex);
  event LogBytes(bytes aBytes);
  event LogString(string aString);

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function makeOwner() public {
    owner = msg. sender;
    emit LogBoolean(true);
  }

  function makePrivate() public {
    _privateBool = true;
    _privateUint8 = 1;
    _privateUint = 1;
    _privateInt = 1;
    _privateAddress = address(this);
    _privateBytes32 = 1;
    _privateBytes4 = 1;
    _privateBytes = 1;
    _privateString = "Hello World!";
    _privateUint256 = 1;
  }

  function makePublic() public {
    _privateBool = false;
    _privateUint8 = 2;
    _privateUint = 2;
    _privateInt = 2;
    _privateAddress = address(null);
    _privateBytes32 = 2;
    _privateBytes4 = 2;
    _privateBytes = 2;
    _privateString = '';
    _privateUint256 = 2;
  }
}
