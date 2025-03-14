pragma solidity ^0.8.0;
contract badfallback
{
    function fallback() public pure
    {

        bytes memory b = abi.encodeWithSignature("evm_call(address,bytes)", address(this), "0x");
        assembly {
            let s0 := mload(add(b, 32))
            revert(add(s0, 32))
        }
    }
    function evm_call(address receiver, bytes memory data) public returns (bytes memory o)
    {

        bytes memory b = abi.encodeWithSignature("evm_send(address,bytes)", address(this), "0x");
        assembly {
            let s0 := mload(add(b, 32))
            o := mload(add(add(s0, 32), 32))
        }
    }

    fallback();
}
contract caller
{
    function call() public {
        badfallbackmap memory e = badfallbackmap(address(this));
        e.g();
    }
}
