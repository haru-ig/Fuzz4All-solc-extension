pragma solidity ^0.8.0;

contract TestMutator {
    address owner;
    address public delegate;
    function __TestMutator(address _owner,address _delegate) public {
        (owner, delegate) = (_owner,_delegate);
    }
    constructor () public {

    }
    function mutate() public {
      uint[] memory _x = x; uint[] memory _z = z;
      for(uint i=0; i<2; i++) {
        x.push(2);
        z.push(2);
      }
      for(uint i=0; i<2; i++) {
        x[i] = 1;
        _x[i+1] = 0;
        _x[i] = 0;
        _z[i+1] = 0;
        _z[i] = 1;
      }
      owner.transfer(address(this).balance);
      x=new uint[](2);
      z=new uint[](2);
    }
}



pragma solidity 0.8.0;

library SignatureUtil(

  bytes32 constant KECCAK256_PREFIX =
    "\x19Ethereum Signed Message:\n32");

library Ripemd160 {

    function compute(bytes32 message) internal pure returns (bytes32 hash) {
        bytes memory hex = bytes(abi.encodePacked(message));
        assembly {
            let len := mload(hex)
            mstore(hash, 0x6a09e667)
            mstore(sub(hash, 0x36), mload(hex))
            mstore
