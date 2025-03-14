pragma solidity ^0.8.0;
contract Mutant
{
    function f(uint i) internal pure {
        assembly {
            let x := 1
            mutant1 := 0
        }
        i += 42;
        assert (i == 2*2 + constant1);
        i *= 111;
        assert (i == 2*31 + constant1);
        delete i;
        i = 54;
        bytes memory  memoryBuf = "abc";
        bytes memory memoryBuf1 = memoryBuf;
        bytes memory memoryBuf2 = memoryBuf + memoryBuf;
        i += uint160( memoryBuf1 + memoryBuf2 );
        assert (i == 2*6*31 + constant1);
    }
    uint mutant1;
    address payable mutant2;
    uint constant constant1 = 42;
    uint constant constant2 = 42;
}
