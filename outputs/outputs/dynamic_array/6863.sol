pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test {


    mapping (bytes32 => bytes32) public storage_map;

    constructor(bool _param) {
        {
            assembly {

                mstore(address(storage_map), 0xabcd)
            }
        }
        }


    void func(bool _param) {
        {
            bytes32[] storage[] storage_array = new bytes32[](42);
            for (uint256 i=0; i < storage_array.length; i++) {
                {
                    assembly {

                        mstore(address(mload(add(storage_map, 42))), 0xabcd)
                    }
                }
            }
        }
    }

}
