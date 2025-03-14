pragma solidity ^0.8.0;
contract InlineAssembly6 {
    function test() public view returns(string memory) {
        string memory s;
        assembly {
            s := mload(0x00)
        }
        return s;
    }
}
