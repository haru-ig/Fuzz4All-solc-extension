pragma solidity ^0.8.0;
contract SolveAssembly6
{
    function test() public pure returns(uint)
    {
        uint z = 0x123;
        uint w = 0x456;
        uint x = 0x789;
        uint key = 0xcde;

        uint a = 0x123;
        uint b = 0x456;
        address p = address(this);
        address h = address(uint(0xdeadbeef));
        bytes memory b1 = hex"abcdef";
        bytes memory b2 = bytes1"abcdef";
        bytes memory b3 = bytes2"abcdef";
        bytes memory b4 = bytes3"abcdef";
        bytes32 memory b5 = bytes32(0x123456789abcdef);

        bytes4 m = bytes4(keccak256("abcdef"));
        bytes memory b31 = bytes32(keccak256(abi.encode(0xdeadbeef)));
        bytes memory b41 = bytes1(keccak256("abcdef"));
        bytes1 m8 = bytes1(3);
        mstore(address(this), m8);

        assembly
        {




            let x1 := 0x0
            let x2 := 0x0


            mstore(x3, and(xor(and(x2, x4), not(xor(or(x2, x4))), xor(x, x4))), x1))

            let y1 := 0x0
            let y2 := 0x0


            mstore(y3,
