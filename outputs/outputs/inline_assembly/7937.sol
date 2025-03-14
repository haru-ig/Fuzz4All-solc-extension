pragma solidity ^0.8.0;
contract L73Fixed {
    struct state {
        uint[5] x;
    }
    state memory s;
    function sneaky() public {
        x[1] = 1;
        s.x[0] += 1;
    }
}
