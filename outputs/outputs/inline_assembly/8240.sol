pragma solidity ^0.8.0;
contract InlineAssemblyMutator{
    address testAddress;
    constructor() public {
        selfdestruct(keccak256("testAddress"));
    }
    function test() public view returns(string memory text) {
        assembly {
            testAddress := 0x01
        }
        text = InlineAssembly2.test();
    }
}
