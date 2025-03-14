pragma solidity ^0.8.0;
contract SolveAssembly
{
    uint y = 0x566505657b383863;
    uint x = 0xf65666666f76;
    uint a = 0;
    function test222() public returns(uint) {
        assembly {
        a := div(mul(sload(0x77), x), and(and(div(y, x), not(a)), a)))
        }
        a = 0;
        return a;
    }
}
