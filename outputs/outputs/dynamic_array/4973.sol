pragma solidity ^0.8.0;
contract Test69d {
    uint flag;
    uint flag2;
    uint flag3;
    uint x;
    uint y;
    uint z;
    constructor() public {
        x;
        y;
        z;
        State memory s;
        s.flag;
        s.flag2;
        s.flag3;
    }
    function bar() public {
        x;
        y;
        z;
        State memory s;
        s.flag;
        s.flag2;
        s.flag3;
        flag;
        flag2;
        flag3;
        flag;
        flag2;
        flag3;
        flag;
        flag2;
        flag3;
    }
}

pragma solidity ^0.8.0;
contract Test70d {
    uint flag;
    uint flag2;
    uint flag3;
    uint x;
    uint y;
    uint z;
    State storage s;
    s.flag;
    s.flag2;
    s.flag3;
    constructor() public {
        x;
        y;
        z;
    }
    function bar() public {
        x;
        y;
        z;
        State memory s;
        s.flag;
        s.flag2;
        s.flag3;
        flag;
        flag2;
        flag3;
        flag;
        flag2;
        flag3;
        flag;
        flag2;
        flag3;
    }
}
pragma solidity ^0.7.0;
contract Test71c {
    uint flag;
    uint flag
