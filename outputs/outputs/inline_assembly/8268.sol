pragma solidity ^0.8.0;
contract InlineAssembly4{
    bool a;
    function test() public pure returns(bool) {
        a := 1;
        return a;
    }
}
