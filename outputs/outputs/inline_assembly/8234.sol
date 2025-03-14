pragma solidity ^0.8.0;
contract InlineAssembly{
    function test() public pure returns(string memory text) {
        assembly {
            text := mload(0)
            mstore(0x0, text)
            write(text)
            pop(0x100)
            mstore(0x0, mload(0))
        }
    }
}
