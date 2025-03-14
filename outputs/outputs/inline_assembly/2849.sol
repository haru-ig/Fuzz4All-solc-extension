pragma solidity ^0.8.0;
contract B {
    uint public z;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        hashMap[key] = keccak256(abi.encodePacked(_z));
    }
    function func() public payable {
        uint _z = 8;
        set(_z);
        set(_z + 100);
    }
}
contract B {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        hashMap[key] = keccak256(abi.encodePacked(_z));
    }
    function func() public {
        uint _z = 100;
        set(_z);
        set(_z + 100);
    }
}



pragma solidity ^0.8.0;
contract B {
    uint public z;
    mapping(bytes32 => bytes32) hashMap;
    function set(uint _z) public {
        bytes32 key = keccak256(abi.encodePacked(_z));
        hashMap[key] = keccak256(abi.encodePacked(_z));
    }
}
