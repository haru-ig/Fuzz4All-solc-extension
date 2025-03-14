pragma solidity ^0.8.0;
abstract contract Basic {
    uint256 NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
}
contract Extended1 {
    function new1() public {
        function newInner1() public returns (uint256) {
            uint256 A = uint256(new1());
            if(A!= NEW_VAR_UPDATE) revert();
            NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
            new2();
            return NEW_VAR_UPDATE;
        }
        function new1inner() public returns (uint256) {
            newInner1();
            NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
        }
        new1inner();
        if(NEW_VAR_UPDATE!= NEW_VAR_UPDATE + 1) revert();
    }
    function new2() public {
        NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    }
}
contract Extended2 is Basic {
    constructor() public {
        NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    }
}
contract Extended3 is Basic, Succ {
    constructor() public {
        NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    }
}
contract Extended4 is Basic, Succ, Extended1, Extended2 {
    constructor() public {
        NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    }
}
contract Extended5 is Basic, Succ, Extended1, Extended2, Extended3 {
    constructor() public {
        NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    }
}
contract Extended6 is Basic, Succ, Extended2, Extended1, Extended3, Extended4 {
    constructor() public {
        NEW_VAR_UPDATE = NEW_VAR_UPDATE + 1;
    }
}
contract Extended7 is Extended2, Basic, Succ {
    function new8() public returns (uint256 x) {
        x = uint256(new1());
        return x;
    }
    function new9() public returns (uint256 y) {
        return uint256(new1());
    }
    function new10() public returns (uint256 z) {
        (uint256 x, ) = (uint256(new1), ); /* Line 58: Type check: Parameter x is of type 'uint256' but value was of type 'uint
