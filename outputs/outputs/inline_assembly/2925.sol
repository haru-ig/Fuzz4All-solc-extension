pragma solidity ^0.8.0;
contract C {
    uint public m_a;
    uint public m_counter;
    uint8 public constant _max_a = 256;
    function add(uint _a) public returns (uint _b)
    {
        add(_a, m_counter);
        return _a + _b;
    }
    function add(uint _a, uint _b) public returns (uint _c)
    {
        add(_a, _b, _max_a);
        return _c;
    }
}
