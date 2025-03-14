pragma solidity ^0.8.0;
contract ThirdFallback {
  function badCall(uint i, uint j, bytes memory b) pure public returns(bytes memory) {
    return b;
  }
}
contract Recurse {
    function getBytes(uint32 i) public returns (bytes memory) {
        return recurseToBytes(i);
    }

    function recurseToBytes(uint32 i) public returns (bytes memory) {
        if (i == 0) return new bytes(0);
        return recurseToBytes(i - 1)..(i % 255) ;
    }
}

contract C {


    fallback() external payable { }
    receive() external payable { }
}
