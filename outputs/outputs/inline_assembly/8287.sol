pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test() public pure {
        string memory s;
        s = asm().load(0x00);
    }
    function assemblyCode() private pure returns (string memory) {
        string memory s;
        s := "assembly code";
        return s;
    }
    function asm() private pure returns (assemblyCode memory) {
        assemblyCode memory ac;
        ac.code := assemblyCode();
        return ac;
    }
}
