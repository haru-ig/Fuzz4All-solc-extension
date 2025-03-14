pragma solidity ^0.8.0;
contract InlineAssembly3{
    address public owner;
    function test() public pure returns(uint256 x) {
        uint256 a;
        assembly {
            {
                a := 0
            }
            mstore(0x01, 5)
            {
                a := a mod 2
            }
        }
        return a;

    }
}
