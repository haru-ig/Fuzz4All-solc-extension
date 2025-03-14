pragma solidity ^0.8.0;
struct NonOverloadable {
    function (uint128) internal returns (uint128) {

        return bytes(abi.encodePacked((uint128(1)))); } }
