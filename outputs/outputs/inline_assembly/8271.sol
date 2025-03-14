pragma solidity ^0.8.0;
contract InlineAssembly5{
    function test() public pure {
        bool a false;
        assembly {
            a := 1
        }
        return a;
    }
}
