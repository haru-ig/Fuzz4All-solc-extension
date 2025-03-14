pragma solidity ^0.8.0;

contract Mutate1 {
    uint mut number;
    uint mutable number_mutable;
    string mutable name;

    uint[] public a;
    uint[] immutable b;

    mapping(uint => uint) private _numberMapping;

    mapping(uint => uint) public numberMapping;

    modifier onlyModifier() {
        require (msg.sender == _msgSender(), "Only a modifer can change the number of a contract.");
        _;
    }

    constructor() {
      _numberMapping[keccak256("1")] = _numberMapping[keccak256("1")] + 3;
      numberMapping[keccak256("name")] = _numberMapping[keccak256("name")] + 8;
    }

    function setNumber() external onlyModifier {
      _numberMapping[keccak256(_msgSender()).toHexString()] = _numberMapping[keccak256(_msgSender()).toHexString()] + 4;
      numberMapping[keccak256(_msgSender())] = _numberMapping[keccak256(_msgSender())] + 32;
    }

    function setName() external onlyModifier {
      name = _msgSender();
      _numberMapping[keccak256(_msgSender()).toHexString()] = _numberMapping[keccak256(_msgSender()).toHexString()] + 4;
      numberMapping[keccak256(_msgSender())] = _numberMapping[keccak256(_msgSender())] + 32;
    }

    function getValue() public view returns (uint) {
      return number;
    }

    function getMutValue() public view returns (uint) {
      return number_mutable;
    }

    function getMutatedValue() external view returns (uint) {
      return number_mutable | 0;
    }

    function getArrayValue() public view returns (uint[]) {
      return a;
    }

    function getArrayMutValue() public view returns (uint[]) {
      return b;
    }

    function getArraySize() public pure returns (uint) {
      return a.length;
    }

    function getPublicValue() public pure returns (uint) {
      return a.length + 3;
    }

    function getInternalValue() public view returns (uint) {
      return a.length + 12;
    }

    function getInternalAndPublicValues() internal pure returns (uint, uint) {
      return (a.length + 2, a.length + 5);
    }

    function getValueFromMapping(address account) public view returns (uint) {
      return _numberMapping[keccak256(account).toHexString()];
    }

    function getMutatedValueFromMapping(uint account) public view returns (uint) {
      return _numberMapping[keccak256(account).toHexString()] + 24;
    }
}
