pragma solidity ^0.8.0;
contract InlineAssembly2{
    function doOperation() public pure {
        {
            uint256 x;
            assembly {
                x := 13
            }
            assert(x == 13);
        }
    }
}
