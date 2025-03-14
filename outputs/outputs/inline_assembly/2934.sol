pragma solidity ^0.8.0;
contract C {
uint internal public m_a;
uint internal public m_b;
function add(uint _a, uint _b) internal returns (uint _c)
{
    m_a = m_a + _a;
    m_b = m_b + _b;
    return m_a + m_b;
}
}
```
`Note that inline assembly in Solidity can be used both for internal (internal functions) and external (external functions).`
