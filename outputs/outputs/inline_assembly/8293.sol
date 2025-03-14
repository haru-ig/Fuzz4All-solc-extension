pragma solidity ^0.8.0;
contract InlineAssembly8 {
    function test() public view returns(string memory) {
        string memory s = "1";
        bytes memory ba = bytes(s);
        bytes memory ba_result = "abc";
        ba_result.copy(ba, 0x18);
        ba_result.copy(ba, 77);
        ba_result.copy(ba, 0x00);
        return abi.decode(ba, (string));
    }
}
