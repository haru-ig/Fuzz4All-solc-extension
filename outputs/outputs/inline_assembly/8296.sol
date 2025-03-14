pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function test2() public view returns(string memory) {
        string calldata s = "1";
        assembly {
        s := add(add(s, 0x18), s)
        }
        return s;
    }
}
