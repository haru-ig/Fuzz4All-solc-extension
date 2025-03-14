pragma solidity ^0.8.0;
contract Test71 {
    uint[] public a;
    function f() public {
        a[0] = 0;
    }
}

pragma solidity ^0.8.0;
contract Test71 {
    uint[] public a;
    function f() public {
        a.push(34);
    }
}

pragma solidity ^0.8.0;
contract Test71 {
    uint a;
    uint[10][6] public b;
    function f() public {
        b[1][2] = 100;
    }
}

pragma solidity ^0.8.0;
contract Test71 {
    uint a;
    uint[10][6] public b;
    function f() public {
        b[1][2] = 100;
    }
}
