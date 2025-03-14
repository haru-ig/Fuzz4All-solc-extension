pragma solidity ^0.8.0;
contract Mutated3
{
    function f() public {
        int x;
        x = uint - 32;
    }
    function g() public {



        uint n = uint32(uint - 32) + uint32(uint - 32 - 32);
    }
    function h() public {
        int x = 10;
        uint n = uint32(uint32(x) - uint32(uint - 32)) + uint32(uint - 32);
    }
    function i() public {
        int x = int(uint - 32);
        uint n = uint32(uint32(x) - uint32(uint - 32 - 32)) + uint32(uint - 32);
    }
    function j() public {
        uint x = 0x03;
        uint32 y = uint32(x) - uint32(uint - 32 - 32);
    }
    function k() public {
        int x = int(uint - 32);
        float64 y = float64(uint32(uint32(x) - uint32(uint - 32 - 32))) + float64(uint - 32);
    }
    function l() public {
        uint x = 10;
        float64 y = uint32(uint32(x) - uint32(uint - 32 - 32)) + uint32(uint - 32);
    }
}
