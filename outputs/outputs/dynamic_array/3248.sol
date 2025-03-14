pragma solidity ^0.8.0;
contract Mut7 {
    enum B {
        a,
        aa,
        ab
    }
    mapping (bytes32 => B) private _storage;
    modifier only(B b)
    {
        require (b == _storage[msg.sender]);

        _;
    }
    function setB(bytes32 key, B value) external only(value) {
        _storage[key] = value;
    }
    function msetB(bytes32 key, B value) public {
        _storage[key] = value;
    }
}
