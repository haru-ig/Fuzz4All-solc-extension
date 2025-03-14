pragma solidity ^0.8.0;

contract mutationsolidity0819 {
    uint z = 0;
    uint x;    uint p; uint q; uint z;


    function mutation() public {
      bytes memory data;
      assembly {


        data := mload(0x40);

        p := mload(add(data,128));
        z := mload(add(data,256));
        x := add(p,z);
        p := mul(q,z);
        q := mul(q,z);
        q := sub(p,q);
      }
    }
  }
