pragma solidity ^0.8.0;
contract InlineAssembly{
    function test() public pure returns(string memory text) {
        assembly {
            mstore(0, 'Hello, World!')
        }
    }
}
