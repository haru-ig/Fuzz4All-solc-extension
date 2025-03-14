pragma solidity ^0.8.0;
contract InlineAssembly3{
    function test() public pure returns(bool) {
        bool a = false;
        assembly {
                {
                    a := 1
                }
        }
        return a;
    }
}
