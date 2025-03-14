pragma solidity ^0.8.0;
contract GX {
    event E ();
    address x;
}
contract XX {
    function f() public returns (uint) {
        return 2;
    }
}

pragma solidity ^0.8.0;
contract XY {
    function f() public returns (uint) {
        uint u = 2;


        uint y = uint((u + 3) / 2);


        return 4;
    }
}

contract T is GX, X, XY {
constructor(uint) public G (1 u) {
    x = new address(1 u);
}
}

pragma solidity ^0.8.0;
contract E {
    event E();
    uint x;
    function f() public {
        x = 2;
        E (0);
        require (x == 0);
        x = 0;
        E (0);
    }
}

pragma solidity ^0.8.0;
contract E {
    event E();
    uint x;
    function g() public {
        x = 2;
        E (x);
        x = 0;
        E (x);
    }
}
