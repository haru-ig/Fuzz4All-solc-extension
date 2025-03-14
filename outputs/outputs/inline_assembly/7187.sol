pragma solidity ^0.8.0;
library AddressHelperV1 {
    function sender() internal view returns(address sender) {
        assembly {
            let ptr := mload(0x40)
            sender := mload(add(ptr, 0x20))
        }
    }
}
