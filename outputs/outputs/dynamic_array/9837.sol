pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint[] memory m_x = [0];
    constructor() public {
        m_x[1] = 0x4001;
        uint[] memory m_b = m_x;
        m_b[0] = 0x2001;
        m_b[1] = 0x1001;
    }
}
