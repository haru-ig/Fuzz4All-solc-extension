pragma solidity ^0.8.0;
contract Caller {
    function badCall(uint32 value) public {
        (uint32 x, bool y) = address(this).call{value: 0}(abi.encode(value));
    }
    function goodCall(uint32 value) public {
        address(this).compile();
        (uint32 x, bool y) = address(this).call{value: 0}(abi.encode(value));
    }
}
