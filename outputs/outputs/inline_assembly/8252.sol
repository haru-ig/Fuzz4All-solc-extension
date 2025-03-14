pragma solidity ^0.8.0;
contract InlineAssembly2{
    function test() public pure returns(bool) {
        bool a;
        assembly {
            {
                0,
                mstore(0, 1)
                {
                    a := 2
                }
            }
        }
        return a;
    }
}
