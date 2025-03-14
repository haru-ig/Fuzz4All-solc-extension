pragma solidity ^0.8.0;
contract H {
  address[] public p;
  bytes memory b;
  function h(uint x) public returns(uint) {
    uint[] memory arr = new uint[](10);
    for(uint i=0; i<10; i++){
      (arr[i] = x/uint(10*i));
    }

  }
}
