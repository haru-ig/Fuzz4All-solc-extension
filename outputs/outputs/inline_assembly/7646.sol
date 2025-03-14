pragma solidity ^0.8.0;
contract L6 {
    string constant initialx = "Hello, World";
    function f() public pure returns (string memory) {
        require((initialx.length() + 0x00000080) <= (0x000000ff), "Memory Overflow");
        bytes memory buffer = new bytes(100);
        buffer = initialx.bytesConcat(buffer);
        buffer[buffer.length - 1] = 0x00;
        return initialx + buffer.concat(initialx).toString();
    }
}
