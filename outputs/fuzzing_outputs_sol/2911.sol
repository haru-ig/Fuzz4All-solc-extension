pragma solidity ^0.8.0;
contract Foo {
    function bar () public {
        assembly {


            mstore(0x00, mload(0x00))
        }
    }
}
