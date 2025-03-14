pragma solidity ^0.8.0;
contract simplesemantics_mut
{
    receive() payable external {
        return;
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    fallbacksemantic_mut fallback;

    constructor() {

        fallback.f(abi.encode("hi"));
        fallback.f(abi.encode("world"));
    }
}
