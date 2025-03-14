pragma solidity ^0.8.0;
contract Basic {
    function fallback() public{
      bytes memory h = abi.encodePacked(address(this));
      assembly {

        calldatacopy(0x0, 0x0, calldatasize)

        mstore(0x40, mload(0x40))

        mstore(0x80, byte(0))

        returndatacopy(0x40, 0x0, returndatasize)
        mstore(0x40, 0x40)

        mstore(0x80, byte(0x40))

        mstore(0xc0, 0x00)
        mstore(0xc0, add(mload(0xc0), 32))
        mstore(0xc0, add(mload(0xc0), 32))
        mstore(0xc0, add(mload(0xc0), 0x01))
        mstore(0xc0, add(mload(0xc0), 0x00))
        mstore(0xc0, add(mload(0xc0), 0x00))
        mstore(0xc0, add(mload(0xc0), 0x00))

        mstore(0xc0, add(mload(0xc0), 0x14))

        let result := mload(0x40)
      }

      assembly {

        let size := returndatasize - 32

        mstore(0x40, 0x60046000)

        mstore(0x40, add(i32(0x40), size))



        mstore(0x80, result)
        return(result)
      }
    }
}
