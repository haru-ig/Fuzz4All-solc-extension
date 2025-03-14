pragma solidity ^0.8.0;
contract FallbackTest{
    function FallbackTest() {
        bytes memory data = abi.encodeWithSignature("fallback()");
        address payable _address = address(0);
        _address.call{value:uint(keccak256(data))}(data);
    }
}
