pragma solidity ^0.8.0;
contract Test82 {
    function m(uint[][] memory memory_arr) external pure {
        return;
    }
    function n(uint[][] calldata mem_arr) external pure {
        return;
    }
}
interface IF171 {
    function a() external pure returns (uint);
}
contract Test171 {
    IF171 a = IF171(0x20);
    function m() public pure {
        return address(a);
    }
    function n() public pure {
        a.a();
    }
}
contract Test172 {
    uint[] public memory_arr;
    function m() public pure {
        return(bytes(memory_arr));
    }
    function n() public pure {
        uint[] memory_arr_old = memory_arr;
        memory_arr = new uint[](5);
        for(uint i = 0; i < 5; i++) {
            memory_arr[i] = 1;
        }
        a.a();
    }
}
contract Test173 {
    uint[] public memory_arr;
    function m() public pure {
        return(address(memory_arr));
    }
    function n() public pure {
        uint[] memory_arr_old = memory_arr;
        memory_arr = new uint[](5);
        for(uint i = 0; i < 5; i++) {
            memory_arr[i] = 1;
        }
        a.a();
    }
}
contract Test174 {
    uint[] public memory_arr;
    function m() public pure {
        memory_arr = new uint[](5);
        uint[] memory_arr_old = memory_arr;
        memory_arr[4] = 499;
        uint[] memory_arr2 = new uint[](5);
        for(uint i = 0; i < 5; i++) {
            memory_arr[i] = 1;
        }
        a.a();
        a.a();
    }
    function n() public pure {}
}
contract Test175 {
    bool public p;
    uint public u;
    uint public t;
    uint public m_i;
    uint public m_b;
    uint public m_p;
    uint public m_u;
    uint public m_t;
    function m() public {
        return(uint(p));
    }
    function u() public {
        return(m_b);
    }
    function t() public {
        return(uint(m_p));
    }
    function m_i() public {
        return(n());
    }
