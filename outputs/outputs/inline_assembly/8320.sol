pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function test() public {
        uint i = 0x3b56d939;

        bytes memory input;
        input.push(0x61);
        input.push(0x41);
        bytes memory output = new bytes(10);

        assembly {
            let d := sload(0x0)
            output := add(output, d)
            let e := add(input, input)
            output := add(output, e)
        }
    }
}
