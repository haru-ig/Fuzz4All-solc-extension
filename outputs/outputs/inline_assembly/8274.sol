pragma solidity ^0.8.0;
contract InlineAssembly5{
    function test() public pure returns(bool) {
        bool a = 1;
        assembly {
            a := 1
        }
        return a;
    }
}
