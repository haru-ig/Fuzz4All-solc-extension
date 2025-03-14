pragma solidity ^0.8.0;
contract Test68e2 {
    constructor() public {
        uint flag;
        uint flag2;
        uint flag3;
        uint a;
        uint b;
        uint c;
        State memory s;
        s.flag;
        s.flag2;
        s.flag3;
    }
}

pragma solidity ^0.8.0;
contract Test68e3 {
    struct State {
        uint flag1;
        uint flag2;
        uint flag3;
    }
    uint flag1;
    uint flag2;
    uint flag3;
    uint a;
    uint b;
    uint c;
    constructor() public {
        State memory s;
        s.flag1;
        s.flag2;
        s.flag3;
    }
    function bar() public {
        State memory s;
        s.flag1;
        s.flag2;
        s.flag3;
    }
}
