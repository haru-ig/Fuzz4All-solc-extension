pragma solidity ^0.8.0;
contract Old191{
    using InlineAssembly for *;
    uint256 public p;
    function increase() public {
        p = p + 10;
    }
    function increaseAndSubtract() public {
        p = p + 1;
        p -= 10;
    }
}
