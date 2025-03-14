pragma solidity ^0.8.0;
contract B {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        if (1 < 1) {
            hashMap[key]++ = key;
        } else {
            hashMap[key]++ = key;
        }
        z = _z;
    }
    function func() public payable {
        uint _z = 3;
        set(_z);
        if (1-1!= 2) {
            _z = 3;
            set(_z);
        }
    }
}
mapping(bytes32 => bytes32) hashMap;
function set(uint _z) public {
    bytes32 key = keccak256(abi.encodePacked(_z));
    if (_z >= 0x100) {

        hashMap[key] = key;

    }
    hashMap[key] = key;
    hashMap[bytes32(1)]-- = bytes32(1);
    z = _z;
  }
```

</details>
