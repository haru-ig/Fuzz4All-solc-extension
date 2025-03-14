pragma solidity ^0.8.0;
contract InlineAssembly3{
    function test() public pure returns(string memory text) {
        assembly {
            text := mload(0)
        }
        text = 'hello';
    }
}
