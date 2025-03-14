pragma solidity ^0.8.0;

contract Test {
    uint id = 01;
    function setID() public {
        unchecked {
            id *= 7;
        }
    }
    function addID() public view returns (uint) {
        return ((id * 128) + 10 * (id >> 8) + 50 * (id >> 16) + 10) & 2**16;
    }
}

pragma solidity ^0.8.0;
contract TestA {
    uint x;

    contructor () public {
        x = 0;
    }
    function f() public {
        uint y;
        uint z;
        function g() internal {
            x += 5;
            y = 3;
            z = id(1) + z;
        }
        g();
        x = id - 4 * (x*3);
     }
}
contract TestB {
    function f() public payable {
        uint y;
        uint z = id(1) + 0;
    }
}
contract TestC {
    bool x;

    contructor() public{
        x = true;
    }

    function f() public {
        if (false) {
            x = false;
        }
        x = x&&true;
    }
}

pragma solidity ^0.8.0;
contract TestD {
    struct X {
        uint val;
    }

    function f() public view returns (uint) {
        return X[0].val;
    }
}

pragma solidity ^0.8.0;
contract TestE {
    address x;

    contructor() public {
        x = "0xC58C7B52B9A92BBEC9EB0735B721F76606DD8435";
    }

    function f() public view returns (address) {
        return x;
    }
}

pragma solidity ^0.8.0;
contract TestF {
    uint x;
    uint y;

    function f() public pure {
        x = 3;
        y = 4;
    }
}
contract TestG {
    uint x;

    constructor () public {
        x = 10;
    }

    function f() public {
        uint yx;
        yx = x*y;
    }
}
contract TestH {
    uint x;
    uint y;

    uint z;

    uint w;
    uint u;
    uint v;

    contructor () public {

        y = 10;

        z = 20;

        u = 30;
