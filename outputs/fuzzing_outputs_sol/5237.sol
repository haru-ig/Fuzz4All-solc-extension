pragma solidity ^0.8.0;
contract Mutator
{
        function c() internal pure {
            assembly {
                mstore(0xfb210610, 0x46028c63)
              }
        }
}
