pragma solidity ^0.8.0;
contract Test67d {
    uint flag;
    uint x;
    uint y;
    constructor() public {
        x;
        y;
        State memory s;
        s.flag = x + y;
        s.flag;
        s.flag;
    }
}

pragma solidity ^0.8.0;
contract Test67e {
    uint flag;
    uint x;
    uint y;
    constructor() public {
        (x,) = (x,) + (y,);
        (flag,) = (flag,) + (x,);
        (y,) = (flag,) + (flag,);
        flag;
        x;
        y;
        flag;
        flag;
        flag;
        flag;
        flag;
        x;
        y;
    }
}

pragma solidity ^0.8.0;
contract Test67f {
    uint flag;
    uint x;
    uint y;
    constructor() public {
        flag;
        flag;
        flag;
        x;
        y;
        flag;
        flag;
        flag;
        x;
        y;
        x;
    }
}
contract Test68 {
    struct Struct {
        uint a;
    }
    uint i;
    uint j;

    constructor() public {
        Struct storage s = Structs[i];
        j = s.a + s.a;
        s.a;
    }
}
