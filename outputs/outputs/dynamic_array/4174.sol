pragma solidity ^0.8.0;
contract F {
    struct State {
        uint [] data;
    }
    State f = State{data: []};
    f.data.push(1);
    uint E;
    uint[] x;
    function f() public {
        E = 1;
        x.push(1);
        State memory x2;
        x2.data.push(1);
        for (uint i = 0; i < 8; i++) x.push(i+3);
        c = 1;
        E += 1;
        E += x.length;
    }
}
