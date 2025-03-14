pragma solidity ^0.8.0;
contract InlineAssembly{
    function test() pub returns(string memory text) {
        assembly {
            text := mload(0)
        }
    }
}
