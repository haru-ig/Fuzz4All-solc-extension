pragma solidity ^0.8.0;
contract A {
    uint public z;
    uint public x;
    uint[] public y;
    mapping (bytes32 => bytes32) hashMap;

    constructor(uint _z) public {
        x=_z;
        z=x;
        update_z();
    }

    uint private _z;
    uint private x_;
    function update_z() private {
        _set(z-z);
    }

    function _set(uint _z) private {
        bytes32 key = keccak256(abi.encodePacked(_z));
        hashMap[key] = keccak256(abi.encodePacked(_z));
    }
}

contract InlineAssemblerSample {
    function test() public {
        A(address(0)).update_z();
    }
}
