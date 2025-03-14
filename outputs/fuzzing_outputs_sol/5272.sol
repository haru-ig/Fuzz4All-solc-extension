pragma solidity ^0.8.0;
contract Contract1
{
        uint internal constant internalNumber = 100;
        function a() isNot(uint128(7)) public pure {
                assembly {
                        mstore(0x48, mload(0x40))
                }
        }
}
