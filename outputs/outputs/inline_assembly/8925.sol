pragma solidity ^0.8.0;
contract EquivalentAsm
{
    uint internal x;



    function test() public
    {
        x <<= 8;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function get() public view returns (uint256)
    {
        return x;
    }
}

contract TestAsm
{
    function run() public view returns (uint256) {
        EquivalentAsm asm;
        inlineasmasm.x <<= 8;
        inlineasmasm.x >>= result >> asm.result >> asm.asm();
        asm.x = 0xAA000000000000000000000000000000000000000000000000
        asm.test();
        asm = InlineAssembly;
        asm.set();
        result = asm.get();
    }
}
