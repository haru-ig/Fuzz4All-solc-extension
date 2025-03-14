pragma solidity ^0.8.0;
contract Test {
   uint256 public u_;      uint160 public address_;      uint256 public x_;
   bytes32 public y_;         bytes32 public bytes32_;      uint64 public b_;
   mapping(bytes32=>bytes32) public map_;
    function Test () public {
        u_  = Mutable.x_;
        address_ = address(address(1));
        x_ = 1;
        y_ = keccak256("hello");
        bytes32_ = keccak256(abi.encode(x_, y_));
        b_ = 0xfffffffffff8000000000000000000000000000000000000000000000000000;
        map_ = keccak256(abi.encode(address_, 0));
    }
}

pragma solidity >=0.4.25;

contract Reversing {

    uint[] private bytes_;

    constructor () public {
        bytes_.push(1);
        bytes_.push(97);
    }

    function bytes() public pure returns (uint[] memory) {
        return bytes_;
    }

    function reverseBytes(uint[] memory x) public pure returns (uint[] memory) {
        uint n = 0;
        for (uint i = x.length - 1; i >= 0; i--) {
            n ^= x[i];
        }
        return uint[1] {n};
    }

}



int a;
