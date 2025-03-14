pragma solidity ^0.8.0;
contract Wither {
    uint8 m_n = 0x0;
    uint8[] memory result;
    uint m_o4;
    uint160 m_o5;
    constructor() {
        _foo(0);
    }
    function _foo(uint n) public {
       if(n > 1) {
           _foo(n/2);
        } else {
           m_n= n;
           emit m_foo();
       }
       result = m_o4.call();
       m_o5.call();
    }

    function call() public view returns (uint[] memory) {
        (m_o4, m_o5) = m_foo.value(0)();
        return result;
    }

    function m_foo() public {
        uint m_x= 2;
        uint[5] memory m_foo;
        m_x = m_x * m_x;
        m_foo= m_foo.value(m_x)(5);
        m_foo[1] = m_foo[m_x];
        m_foo[1] = m_foo[1];
    }
}
