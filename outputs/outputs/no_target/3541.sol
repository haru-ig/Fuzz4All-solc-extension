pragma solidity ^0.8.0;
contract m107 {
    contract r1 {
        event a(uint x, uint y, uint z);
        function f() public view returns(uint)
        {
            emit a(88, 99, a42);
            return ms[2].x;
        }
    }
    event b(uint x, uint y);
    uint8 x1;
    uint256 x2;
    uint32 x3;
    address x4;
    assembly {
        x10 := m(add(0x08, 0x40), 0x00)
        x12 := m(add(x10, 0x20), 0x40)
        x14 := m(add(add(x10, 0xe0),  mload(memory)), 0x40)
    }
    event c(uint x, uint y);
    bytes memory mem;
    constructor() public {
        mem[19] = 1;
        mem[20] = 2;
        mem[21] = 3;
        mem[22] = 4;
        emit b(1, add(2, 3));
    }
    function m(uint x, uint y) pure public returns(uint) {
        if(x>=0 && y>=0) {
            return x+y;
        }
        return 1 + x/y * (x/y-1);
    }
    function h(uint idx) public view {
        emit c(s[idx].x, ms[idx].z);
    }
    function g() public view returns(uint) {
        return a6(a6(a6(a6(a6(add(a6(4,2),2),(4)),2),ms[2].x),x1),1);
    }
    function j() public view returns(uint) {
        return j(j(j(j(j(1,add(x4, 1)),add(1,x4)),add(add(add(a2,241),(ms[2].w)),x1),1),2),1);
    }
}
