pragma solidity ^0.8.0;
contract Fabric {

    struct Record {
        string key;
        bytes value;
    }
    mapping (address => Record) public x;
    Record[] public y;
    address public z;
}
