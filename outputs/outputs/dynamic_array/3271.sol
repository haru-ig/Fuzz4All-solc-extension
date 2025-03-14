pragma solidity ^0.8.0;
contract Mut5a {
    struct A {
        bytes32 b;
        string c;
        bool d;
    }
    mapping(uint256 => A) public _storage;
    function setStorage(uint256 key, string memory _value) public {
        A(key + 1);
        _storage.save(uint256(address(this)), "test");
    }
}
