pragma solidity ^0.8.0;
contract Mutated{
    function test() public pure returns(string memory text) {
        string memory text2=asm2;
        text=text2;
    }
    string public asm2;
}
