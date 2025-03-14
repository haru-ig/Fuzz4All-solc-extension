pragma solidity ^0.8.0;
contract InlineAssembly4 {
    uint256 private constant _value = 42;
    constructor() public {}
    function test() public pure {
        uint256 memory a
        uint i = a
        a = i
        require(a == _value)
    }
}
