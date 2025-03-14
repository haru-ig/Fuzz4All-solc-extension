pragma solidity ^0.8.0;
contract L7 {
    bytes memory init_data;
    function deploy() public {
        init_data = abi.encode(0x00, 0x05, 167, 0x60, 0x1F, 0x20, 0x04);
        assembly {
          let pointertostorage := mload(0x40)
          mstore(add(pointertostorage, 0xC), init_data)
        }
    }
}
