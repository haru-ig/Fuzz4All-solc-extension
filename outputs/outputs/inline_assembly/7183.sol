pragma solidity ^0.8.0;
library AddressHelper {

    function sender() internal view returns (address sender) {
      assembly {
       let ptr := mload(0x40)
       sender := mload(add(ptr, 0x20))
      }
    }
}
