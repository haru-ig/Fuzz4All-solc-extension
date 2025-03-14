pragma solidity ^0.8.0;
contract Mutator3
{
        function c() internal pure {
            assembly {

                mstore(0xfb210610, 0x46028c63)
              }
        }
}

pragma solidity ^0.8.0;
contract Mutator4
{
        function c() public pure {
            assembly {

                mstore(0xfa8802c1, 0x40009063)
              }
        }
}
