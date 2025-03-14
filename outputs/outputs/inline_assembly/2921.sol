pragma solidity ^0.8.0;
contract C {
    uint public m_a;
    uint public m_counter;
    function add(uint _a) public returns (uint _b)
    {
        add(m_counter, _a);
        return m_counter + 1;
    }
    function add(uint _a, uint _b) public returns (uint _c)
    {
        m_counter++;
        return m_a + _b;
    }
}
