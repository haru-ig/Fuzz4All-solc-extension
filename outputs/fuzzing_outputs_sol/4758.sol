pragma solidity ^0.8.0;
contract BuyerModifiable {
    uint256[4] public array = [1, 2, 3, 4];
    function set(uint val, uint idx) internal {
        array[idx] = val;
    }
}

pragma solidity ^0.8.0;
contract BuyerLookup {
    mapping(uint256 => uint256) public keyToArray;
    uint256[] internal allKeys;
    function register(uint key, uint value) public returns (uint256) {
        return keyToArray[key] = value;
    }
    function lookup(uint key) public view returns (uint256) {
        return keyToArray[key];
    }
    function lookupAll(uint key, uint value) public view returns (uint256) {
        return keyToArray[key] = value;
    }
    function lookupAll(uint key1, uint value1, uint key2, uint value2, uint key3, uint value3, uint key4, uint value4) public view returns (uint256, uint256, uint256, uint256) {
        if (keyToArray[key1]!= 0) {
            return keyToArray[key1] = value1;
        } else if (keyToArray[key2]!= 0) {
            return keyToArray[key2] = value2;
        } else if (keyToArray[key3]!= 0) {
            return keyToArray[key3] = value3;
        } else if (keyToArray[key4]!= 0) {
            return keyToArray[key4] = value4;
        }
    }
    function getKeys() public view returns (uint256[]) {
        return allKeys;
    }
    constructor() {
        keyToArray[12345] = 4560;
        keyToArray[23456] = 789;
        allKeys.push(12345);
        allKeys.push(23456);
    }
}

contract Modulo {
    function add(uint a, uint b) public pure returns(uint) {
        return a + b + b * 2.0 + b * 2.0 * 8 - 2.0;
    }
}


pragma solidity ^0.8.0;
contract C1 {

  address addressMod;
  address contractMod;
  address selfMod;
  uint256 a;
  uint256 b;
  uint256 total;
  uint256 modTotal;
  uint256[4] public array;
  uint256 constant constantCall = 0xffffffff;

  constructor(uint256 _a, uint256 _b) {
    a = _a;
    b = _b;
    contractMod = msg.sender;
    addressMod = address(contract
