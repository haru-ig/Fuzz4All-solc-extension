pragma solidity ^0.8.0;
library mutated {



    s.a_slot,
    uint old = s.a;
    s = s.f(2, "this is the message");
    int256 i;
    i = 9;
    i = uint2(i) + uint2(s.a);
    i = uint2(i) + uint2(a);
    new_old = old.f(666, uint(old));
}

pragma solidity ^0.8.0;
library nested {
    struct f {
        struct f2 { uint a; } f3;
        uint b;
    }
    struct g {
        f.f2 f;
        uint c;
    }
    function get(uint) public pure returns( uint a, g memory b) {}
    struct s {
        uint a;
        uint b;
        g d;
    }
    g s;
}

contract dynamic_mem {
}
