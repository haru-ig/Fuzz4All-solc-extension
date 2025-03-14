pragma solidity ^0.8.0;
contract m205 {
    struct MyStruct {
        uint x;
        uint y;
    }
    MyStruct public s;
    bytes public x = "Test";
    uint public i;
    constructor() public { i = 5 + 6 + 7; }
}


pragma solidity ^0.8.0;
contract m204 {
    bool public x;
    bytes public y;
    constructor() public { x = 1; }
}

pragma solidity ^0.8.0;
contract m203 {
    address public x;
    bytes public y;
    constructor() public { x = 1; }
}

pragma solidity ^0.8.0;
contract m202 {
    uint public x;
    bytes public y;
    constructor() public { }
}

pragma solidity ^0.8.0;
contract m201 {
    uint[] public pubx;
    pubx.push(1);
    constructor() public { }
}

pragma solidity ^0.8.0;
contract m200 {
    bool public x;
    function () public {
        x = 1;
    }
    constructor() public { }
}

pragma solidity ^0.8.0;
contract m199 {
    struct MyStruct {
        uint x;
        uint y;
    }
    MyStruct s;
    uint [] public x = new uint[](3);
    uint public i;
    constructor() public { i = s.x + s.y; }
}



pragma solidity ^0.8.0;
contract m198 {
    struct MyStruct {
        uint x;
        uint y;
    }
    uint[] public pubx;
    constructor() public(4 + 5) { }
}

/*   array and pass the
