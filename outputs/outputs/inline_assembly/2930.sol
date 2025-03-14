pragma solidity ^0.8.0;
contract C {
    uint public m_a;
    uint public m_b;
    function add(uint _a, uint _b) public returns (uint _c)
    {
        m_a = _a;
        m_b = _b;
        return m_a + m_b;
    }
}
