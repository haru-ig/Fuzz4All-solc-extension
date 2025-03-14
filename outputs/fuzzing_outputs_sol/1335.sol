pragma solidity ^0.8.0;
contract Contract {
    struct MyRecord {
        uint8 foo;
        uint8 bar;
    }
    mapping(bytes32 => MyRecord) private records;
    function updateRecord(bytes32 recordHash, bytes memory data) public {
        uint8 _foo; uint8 _bar; bytes memory foobar;
        assembly {
            foobar := mload(add(data, 0x20))
            _foo := mload(foobar)
            _bar:= mload(add(foobar, 0x8))
        }
        records[recordHash] = MyRecord({_foo, _bar});
    }
    function getFoo() public view returns (uint8) {
        return records[bytes32(keccak256("foo"))].foo;
    }
    function getBar() public view returns (uint8) {
        return records[bytes32(keccak256("bar"))].bar;
    }
}
