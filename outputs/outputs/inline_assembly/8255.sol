pragma solidity ^0.8.0;
contract InlineAssembly3{
    function test() public pure returns(bool result) {
        bool a;
        a = 1;
        assembly {
                {
                    a := 1
                }
        }
        result = a;
    }
}
