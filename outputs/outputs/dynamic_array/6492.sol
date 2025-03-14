pragma solidity ^0.8.0;
contract SOAR {
    uint[] mem;
    uint[] mem2;

    function move(uint pos) public {
        mem[pos] = mem2[pos];
    }

    function move(address from, uint pos) public {
        mem[pos] = mem2[from][pos];
    }

    function move2(uint pos) public {
        mem2[pos] = mem[pos];
    }
}
contract SAB {
    uint[] mem;
    uint[] mem2;
    uint[] mem3;

    function move(uint pos) public {
        mem[pos] = mem2[from][pos];
    }

    function move2(uint pos) public {
        mem2[pos] = mem[pos];
    }
}
