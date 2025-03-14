pragma solidity ^0.8.0;
contract InlineAssembly4 {
    function test() public view returns(string memory) {
        string memory s;
        assembly {
            s := mload(0x00)
            mstore(0x00, add(s, 3))
        }
        return s;
    }
}
contract InlineAssembly5 {
    function test() public view returns(string memory) {
        string memory s;
        assembly {
            s := add(mload(0x00), 3)
        }
        return s;
    }
}
