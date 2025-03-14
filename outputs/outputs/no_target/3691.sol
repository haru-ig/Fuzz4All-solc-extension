pragma solidity ^0.8.0;
contract W {
    constructor(uint) {}
    function g() public {}
}

pragma solidity ^0.8.0;
contract K {
    function g() public returns (uint, address a) {
        return 0, address (2);
    }
}

pragma solidity ^0.8.0;
contract L {
    uint x;
    function h() public {
        address e = G ();
        f(address(0));
        f(address(e));
        f(address (e));
        f(address (0));
        f(address (this));
        x=1;
    }
    function f(address y) private {
        if (x < 2)
        {
        }
        else
        {
        }
    }
}
