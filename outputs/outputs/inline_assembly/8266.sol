pragma solidity ^0.8.0;
contract InlineAssembly2{
    function test() public pure returns(bool) {
        bool a;
        assembly {
            a := mload(0x00)
        }
        a = 0;
        a := true;
        return a;
    }
}
