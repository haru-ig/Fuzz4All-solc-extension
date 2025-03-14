pragma solidity ^0.8.0;
contract c {
    bool isOdd;
    uint8 a;
}
pragma solidity ^0.8.0;
contract c {
    bool isOdd;
    uint b;
}
pragma solidity ^0.8.0;
contract c {
    bool isOdd; uint isOdd;
    uint8 a;
}

pragma solidity ^0.8.0;
contract c {
    uint foo;
    modifier m() { fsm(); g(); fsm(); h(); }
    modifier m2(uint v) { fsm(); g(); fsm(); h(); }
    function fsm() { foo = 1; }
    function g() { foo = 2; }
    function h() { foo = 3; }
}
pragma solidity ^0.8.0;
contract c {
    uint foo;
    modifier m() { fsm(); g(); fsm(); h(); }
    modifier m2() { fsm(); g(); fsm(); h(); }
    function fsm() { foo = 1; }
    function g() { foo = 2; }
    function h() { foo = 3; }
}
pragma solidity ^0.8.0;
contract c {
    uint foo;
    modifier m { fsm(); g(); fsm(); h(); }
    modifier m2() { fsm(); g(); fsm(); h(); }
    function fsm() { foo = 1; }
    function g() { foo = 2; }
    function h() { foo = 3; }
}
pragma solidity ^0.8.0;
contract c {
    uint foo;
    modifier m(uint v) { fsm(); g(); fsm(); h(); }
    modifier m2(uint v) { fsm(); g(); fsm(); h(); }
    function fsm() { foo = 1; }
    function g() { foo = 2; }
    function h() { foo = 3; }
    function fsm() { foo = 4; }
    function g() { foo = 4; }
    function h() { foo = 4; }
}
