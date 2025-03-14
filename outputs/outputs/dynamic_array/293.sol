pragma solidity ^0.8.0;
contract D10 {
    uint256[] public a;
    uint256 a_0_4;
    constructor() public {
        a.push(0x0);
    }
    function push_back1() public {
        uint256 new_element1 = 0x0;
        a_0_4 = 1;
        a.push(new_element1);
    }
    function push_back2() public {
        uint256 new_element2 = 0x0;
        a_0_4 = 2;
        a.push(new_element2);
    }
    function push_back3() public {
        uint256 new_element3 = 0x0;
        a_0_4 = 3;
        a.push(new_element3);
    }
}
contract D11 {
    struct B { uint256 b; uint256 b_0_1; }
    uint256[] public b;
    B[] public b_0_2;
    uint256 b_0_3;
    constructor() public {
        for(uint256 i = 0 ; i < 2 ; i = 100) b_0_3 = a.length;
    }
}
contract D12 {
    int256[] public b;

    function test() public {
        for(uint256 i = 0 ; i < b.length ; i = 100) {
            b[1000];
            contract D3 b_0_0;
        }
    }
}
contract D13 {
    D11 a;
    uint256 a_inner;
    constructor () public {
        if(a_inner == 3308) a.b.push(0x4);
    }
}
contract D14 {
    uint256[] public b, b_1;
    constructor() public {
        for(uint256 i = 0 ; i < 2 ; i = 100) b.push(0x2);
        b_1 = b;
    }
}
contract D15 {
    D11 c;
    uint256 c_inner;
    constructor() public {
        if(c_inner == 30) c.b.push(
