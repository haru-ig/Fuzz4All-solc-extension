pragma solidity ^0.8.0;
contract InlineAssembly4 {
    function test() public view returns(string memory) {
        string memory s = "1";
        assembly {
            s := and(s, and(s, and(and(and(s, s), s), s)))
            s := s
        }
        return s;
    }
}
