pragma solidity ^0.8.0;

contract L14 {
    function multiply(uint x, uint y) internal {

       uint xS = uint(uint80(uint128(uint(uint80(mload(0x30)))));

       uint yS = uint(uint80(uint128(uint(uint80(mload(0x40)))));


       xS *= 42;


       uint(uint80(uint128(uint(uint80(xS))))).storeAs(mload(0x30))
    }
}
