pragma solidity ^0.8.0;
contract A {
    uint b = 0x188364c7e * 10528146;
    uint constant _uint64 = 918710609 * 1421910;
    uint constant _uint32 = uint(80501 * 10528146);
    function mutatedBy(uint) public pure returns(uint) {
        uint a;
        a += uint(_uint64) - uint(_uint32);
        return (uint(a - uint(uint(_uint64) * 256)) * 256) * 32;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint b = 80501 * 10528146;
    uint constant _uint64 = 0x188364c7e * 10528146;
    function mutatedBy(uint) public pure returns(uint) {
        uint a;
        a += uint(_uint64) - uint(b);
        return (uint(a - uint(uint(_uint64) * 256)) * 256) * 32;
    }
}

contract A {
    uint b = 80501 * 10528146;
    uint constant _uint64 = 0x188364c7e * 10528146;
    function mutatedBy(uint) public pure returns(uint) {
        uint a;
        a += uint(_uint64) - uint(b);
        return (uint(a + uint(_uint64) * 30) * 256) * 22;
    }
}
