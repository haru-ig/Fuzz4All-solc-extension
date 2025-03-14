pragma solidity ^0.8.0;
contract ComplexMutatedAddresses {
    address public currentAddress1_current;
    address public currentAddress1_new1;
    address public currentAddress1_new2;
    address public newAddress1_default;
    address public newAddress2_default;
 });
pragma solidity ^0.8.0;
contract Array {
    struct Node {

        bytes32 key;
        bytes32 value;
    }
    Node[] private nodes;
    uint256 private _nodesLength;
    uint256 private capacity;
    uint256 private size;
    bytes32 private _separator;
   uint256 private _min;
   uint256 private _max;


    event NewKey(bytes32 key, bytes32 value);
    event NewValue(bytes32 key, bytes32 value);


    constructor(bytes32 separator) { _separator = separator; _min = 0; _max = 255; size = 0; _nodesLength = 0; _max = 254;}

    function insertAt(uint256 index, bytes32 key, bytes32 value) public { if (index == 0) _addNewKeyAt(key, value); else _addNewValueAt(index, key, value); }
    function addNewKeyAt(bytes32 key, bytes32 value) public { if(exists(key)) revert("key already exists"); else _addNewKeyAt(key, value); }
    function replaceValueAt(uint256 index, bytes32 key, bytes32 value) public { _addNewValueAt(index, key, value); }

    function exists(bytes32 key) public returns (bool exist) { for (uint256 i = 0; i < _nodesLength; i++) { if (keccak256(abi.encodePacked(nodes[i].key)) == keccak256(abi.encodePacked(key))) { exist = true; return; } } }
    function addNewValueAt(uint256 index, bytes32 key, bytes32 value) private { if (index == 0) { _addNewKeyAt(key, value); } else { bytes32 key1 = nodes[index - 1].key; if (keccak256(abi.encodePacked(key)) < keccak256(abi.encodePacked(key1))) _addnewValueAt(index - 1, (key1, value));  else _addnewValueAt(index, (
