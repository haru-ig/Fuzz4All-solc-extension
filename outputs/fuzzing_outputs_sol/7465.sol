pragma solidity ^0.8.0;
contract Caller {
    function sendEtherToCaller(uint256 value, bytes memory) public payable {
        address(msg.sender).call(abi.encodeWithSignature("", ""));
        address(msg.sender).call(abi.encodeWithSignature("", ""), value);
        uint256 val = 0;
        address(msg.sender).call(abi.encodeWithSignature("receive()"));
        function f() public returns (bool) {
            return memory["data()"] == 4;
        }
        function g() public returns (bool, uint256) {
            uint256 x = 0;
            val = memory["data()"] + x;
            x = x + v(msg.sender());
            return (x > 0, x);
        }
        function h() public returns (bool) {
            val = v(0x13ef4db10000000c00000000000000000000000000000000000000000000000000);
            return val == 0x1 + v(0x1a);
        }
    }
    function v(address x) internal pure returns (uint256) {
        if(x == address(0)) {
            return uint256(0);
        }
        bytes memory xBytes = bytes{x.toHexString()};
        bytes memory bytesX = hexToBytes(xBytes);
        uint96 xUint = bytesX[0];
        uint8[96] storage bytesXUint;
        for(uint i = 0; i < 96; i++) {
            bytesXUint[i] = bytesX[i];
        }
        bytes memory xHex = bytesXUint.toHexString();
        uint96.mem0(xBytes, xHex);
        return xUint;
    }
    function hexToBytes(bytes memory source)
    internal pure returns (bytes memory)
    {
        return bytes(source);
    }
}
