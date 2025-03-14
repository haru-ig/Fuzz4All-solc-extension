pragma solidity ^0.8.0;
import {IBytesArrayStorage} from './IBytesArrayStorage.sol';
contract ExampleContract {
    address public admin;
    address public owner;
    struct Entry {
        bytes3 key;
        bytes3 value;
    }
    mapping(uint256 => Entry) public entries;
    mapping(bytes3 => uint256) public reverseLookup;
    mapping(address => uint256) public reverseLookupFromAddress;
    constructor() {
        admin = msg.sender;
        owner = admin;
    }

    function setAdmin(address newAdmin) public {
        require(...);
        admin = newAdmin;
    }

    function setOwner(address newOwner) public {
        require(...);
        owner = newOwner;
    }

    function add(uint256 a_, bytes3 b) public {
        require(msg.sender == admin, "Admin only");
        require(a_!= 0, "Need a non-zero value");
        require(reverseLookup[b] == 0, "Key already added");
        reverseLookup[b] = entries.length;
        entries.length++;
        entries[entries.length].key = b;
        entries[entries.length].value = b;
        if (reversed[b]) entries[a_].key = bytes3ToString(a_);
        else entries[a_].key = reverseLookup[b - 1];
        entries[a_].value = b;
    }

    function remove(uint256 a_) public {
        require(msg.sender == admin, "Admin only");
        require(entries[a_].value > 0, "The value must have been added");
        bytes3 b = reversed[entries[a_].key]? bytes3ToString(a_) :
        require(entries[a_].key == b, "key must be the same as existing value");
        reverseLookup[b] = 0;
        delete entries[a_];
        require(reverseLookup[entries[a_].key] == 0, "Key must be removed");
        delete reverseLookup[entries[a_].key];
    }

    function update(uint256 a_, bytes3 b_, bytes3 b) public {
        require(msg.sender == admin, "Admin only");
        bytes3 b_old;
        if (reversed[b_]) b_old = bytes3ToString(a_);
        else b_old = bytes3ToString(reverseLookup[b - 1]);
        require(entries[a_].value > 0, "The value must have been added before update");
        require(entries[a_].key == b_, "Key must be the same before update");
        require(entries[a_].value[0] == b[0], "Previous value must match the current value");
        entries[a_].value = b;
        if (reversed[b]) entries[a_].key = bytes3ToString(a_);
        else
