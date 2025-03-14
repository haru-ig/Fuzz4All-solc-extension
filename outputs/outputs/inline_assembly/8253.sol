pragma solidity ^0.8.0;
contract InlineAssembly2{
    function test() public pure returns(bool) {
        bool a;
        assembly {
            {
                a := a + 1
            }
        }
        return a;
    }
}
