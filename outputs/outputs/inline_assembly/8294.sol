pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function test() public view returns(string memory) {
        string memory s = "1";
        assembly {
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := s+"0x"
        s := mload(0x00)
        s := s+"0x"
        s := s+"0x"
        }
        return s;
    }
}
