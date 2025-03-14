pragma solidity ^0.8.0;
contract NewSolidity {
    function x() public {
        uint[256] memory memoryX;
        memoryX[0] = 0;
        memoryX[255] = 1;
        uint[256] memory m;
        assembly {
            m := add(m, 1)
            m := m.add(3)
        }
        m[1] = 2;
        m = new uint[](258);
    }
}
