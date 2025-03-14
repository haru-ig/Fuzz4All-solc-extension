pragma solidity ^0.8.0;
contract InlineAssembly2{
    function test() public pure {
        mstore(0, 'Hello, World!');
    }
}
contract InlineAssembly3{
    function test() public pure returns(uint32) {
        uint32 x;
        assembly {
            x := 11
        }
        return x;
    }
}
