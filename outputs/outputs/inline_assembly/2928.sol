pragma solidity ^0.8.0;
contract C {

    uint constant m_a = 2;
    uint constant m_b = 3;

    function add(uint _a, uint _b) constant public returns (uint _c)
    {
        m_counter++;
        return m_a + _b;
    }
}
