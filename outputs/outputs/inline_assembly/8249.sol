pragma solidity ^0.8.0;
contract InlineAssembly1{
    function test() public pure returns(bool) {
        bool a;
        assembly {
            {
                a := 1
            }
        }
        return a;
    }
}
