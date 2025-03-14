pragma solidity ^0.8.0;
contract InlineAssembly {
    function add(uint a) public pure returns (uint r) {
       (r, _) = assembly {
            add(a, 1)
         };
    }
}

contract C is InlineAssembly {
    uint public m_a;
    uint public m_counter;
    constructor() public {
        m_counter = 0;
        m_a = 10;
    }
    function add(uint _a) public returns (uint _b) {
        ((int, r), ) = assembly
        {


            m_a := add(m_a, 1)
            m_counter := add(m_counter, 1)




        }
        return m_counter + 1;
    }
}
```
