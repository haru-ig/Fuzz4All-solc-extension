pragma solidity ^0.8.0;
contract InlineAssembly8 {
    function test() public view returns(string memory) {
        string memory s = "1";
        assembly {
        mstore(0x12, add(s,0x18))
        mstore(0x20, s)
        s := mload(0x20)
        s := mload(0x00)
        }
        return s;
    }
}
