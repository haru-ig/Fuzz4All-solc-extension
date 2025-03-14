pragma solidity ^0.8.0;
contract C {
    uint public m_a;
    uint public m_b;
    function add(uint _a, uint _b) public returns (uint _c)
    {
        m_a = _a;
        m_b = _b;
        return add(m_a, m_b);
    }
}

pragma solidity ^0.8.0;
contract C{
    uint m_a;
    uint public m_b;
    function add(uint _a, uint _b) public returns (uint _c)
    {
        m_a = _a;
        m_b = _b;
        return (add(m_a, m_b) / 2 * 10) > 5? (100 * 100) / (100 - add(m_a, m_b)) : (0) / (100 + add(m_a, m_b));
    }
}
