pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function test() public view returns(string memory) {
        string memory s = "1";
        assembly {
        s := add(add(s, 0x18), s)
        }
        return s;
    }
}
