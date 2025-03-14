pragma solidity ^0.8.0;
contract Semantics3 {
    constructor() { }

    function f(uint x) public pure {
        uint a = (uint(uint01) << 16);
        uint b = (uint(uint02) << 16) | (uint(uint04) << 8);
        uint c = uint(uint03) << num();
    }

}
pragma solidity ^0.8.0;
contract Semantics2 {
    constructor() { }

    function f() public pure {
        uint x = (uint(x) << uint(uint01) << uint(uint03));
        f02(uint16(uint01) << 8 << uint(y));
        F10(uint8(uint01) << uint(uint07));
        F9(uint16(uint07));
        F8(uint8(uint02));
        F7(uint32(uint01) << uint(uint02) << uint(uint06));
        F6(uint32(uint1) << uint(uint04));
        F5(uint32(uint02));
        F4(uint32(uint1) << uint(uint03));
        F3(uint32(uint04));
        F2(uint32(uint1) << uint(uint05) << uint(uint01));
        F0(uint32(uint02));
    }
}
pragma solidity ^0.8.0;
contract Semantics1 {
    constructor() { }

    function f() public pure {
        uint x = (uint(x) << uint(uint01) << uint(uint03));
        uint256 a = (uint256(uint1) << uint(uint08) << uint(uint03) | uint256(uint03)) / uint256(uint8(uint01));
        F1(a);
    }
}
