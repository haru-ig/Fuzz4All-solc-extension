pragma solidity ^0.8.0;
contract C {
    uint public m_a;
    uint public m_counter;
    function add(uint _a) public returns (uint _b, uint _c)
    {
        return (m_counter + 1, add(m_a, _a));
    }
    function add1(uint _a) public returns (uint _b, uint _c)
    {
        add(m_counter, _a);
        return add(m_a, _a);
    }
    function add(uint _a, uint _b) public returns (uint _c)
    {
        m_counter++;
        return m_a + _b;
    }
}
