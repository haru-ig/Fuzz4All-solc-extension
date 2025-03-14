pragma solidity ^0.8.0;
contract test {
    uint256 public testNum;
    bytes32 public testBytes;
    struct TestStruct {
        string str;
        bytes32 bytes;
    }
    constructor () {
        testNum = 12121;
        testBytes = "abc";
    }
    function change(uint256 _a, bytes32 _b) public {
        testNum = _a;
        testBytes = _b;
    }
    function concat(uint256 _a, bytes32 _b) public view returns (uint256) {
        return _a + _b;
    }
    function concatWithAssignment(uint256 _a, bytes32 _b) public {
        testNum = testNum + 10;
        testBytes = testBytes + _b;
    }
    function sum(uint256 _a, bytes32 _b) public view returns (uint256) {
        return _a + _b + testNum + 8 + 100;
    }
    function equals(uint256 _a, bytes32 _b) public pure returns (bool) {
        return uint256(_b) +  _a + testNum == _a + testNum && testNum + _a == _a + testNum + _a + testBytes;
    }
    function toUpper(bytes32 _a) public pure returns (bytes32) {
        return bytes32(uint80(keccak256(abi.encodePacked(string(_a), "abc"))));
    }
}



pragma solidity >=0.4.24 <0.8.0;

contract CappedToken {

  using SafeMath for uint256;

  string private _name;
  string private _symbol;
  uint8 private _decimals;
  uint256 private _cap;

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Burn(address indexed user, uint256 amount);

  constructor (
    string memory name,
    string memory symbol,
    uint8 decimals,
    uint256 cap
  )
    public {
