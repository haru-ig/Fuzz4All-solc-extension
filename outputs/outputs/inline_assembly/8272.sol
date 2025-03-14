pragma solidity ^0.8.0;
contract InlineAssembly5{
    function test() public pure returns(bool) {
        bool a ;
        assembly {
            a := 1000000000


        }
        return a;
    }
}
