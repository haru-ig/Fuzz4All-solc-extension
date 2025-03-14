pragma solidity ^0.8.0;
contract Mut8 {
    enum B {
        a,
        aa,
        ab
    }
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        _storage[key] = value;
    }
    event BChanged(B newValue);
    function testChanged(B newValue) public {
        emit BChanged(newValue);
    }
    function addOne(uint256 x) private pure returns (uint256) {
        return x + x;
    }
    function addB(B b) public {
        B storage bS = _storage[keccak256(abi.encodePacked(addOne((uint256(b) + (uint256)1))])]= b;
    }
}
