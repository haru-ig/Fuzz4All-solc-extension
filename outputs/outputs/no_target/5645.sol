pragma solidity ^0.8.0;
contract Repro1 {
    function g1(uint a) public {
        uint a0 = 0;
        uint a1 = a + 2;
        a1 = a - 2;
        a1 = a + a;
        a1 = a - a;
        a1 = a * a;
        a1 = a / a;
        a1 = a % a;
        a1 = a ** a;
        a1 = a <= a;
        a1 = a >= a;
        a1 = a && a;
        a1 = a || a;
    }
}

pragma solidity ^0.8.0;
contract Repro2{
    function g99() public {
        uint a = 0;
        a = a + 2 / 0;
    }
}

pragma solidity ^0.8.0;
contract Repro3{
    function g98() public {
        uint a;
        a = uint160(a) * uint160(uint160(a));
    }
}
contract Repro4{
    function main() public {
        uint a;
        uint b;

        a = uint32(a);
        b = a * uint32(a);
        b = a * uint32(a) + uint32(a);
    }
}
contract Repro5 {
    function g41() public {}
}
contract Repro6{
    function main() public {
        contract x = 1;
    }
}
contract Repro7{
    function g78() public {
        uint x = 0;
        uint y = uint8(x);
    }
}
contract Repro8 {
    function g87() public {}
}
contract Repro9 {
    function g12() public {}
}
contract Repro10{
    function g15() public {}
}



contract Repro11 {
    function g17() public {}
}
contract Repro12{
    function g25() public {
        uint x;
        x = -1;
    }
}
contract Repro13{
    function g40() public {
        uint x;
        x = -1;
        x = uint8(x);
        x = uint16(x);
    }
}
contract Repro14 {
    function g70() public {
        uint x;
        x = 0;
        x = 0 / uint8(0);
        x = 0 / uint16(0);
    }
}
contract Repro15 {
    function g82() public {}
}
