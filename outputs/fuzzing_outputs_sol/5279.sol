pragma solidity ^0.8.0;
interface Caller3
{
        function a(bytes32 data, bytes4 a, uint64 x, address target) external;
}
contract Test3
{
        function b() external
        {

                bytes32 data3 = keccak256("3");

                Caller3 caller = Caller3(msg.sender);

                caller.a(data3, bytes4(0), 33, address(this).balance);

                caller.a(bytes32('\x01\x23'), bytes4(keccak512("0x01").sha256), 2, this);

                Fallback3 fallback3 = Fallback3(msg.sender);
                fallback3.a(2, 1);
        }
}
