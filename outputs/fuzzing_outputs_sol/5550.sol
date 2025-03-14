pragma solidity ^0.8.0;
contract fallbacksemantic_mut1
{
    event NewFallback(bytes4 result);
    function fallbacksemantic_mut1(bytes memory a) public {
        NewFallback(keccak256(abi.encode(a)));
    }
}
