pragma solidity ^0.8.0;
contract B {
    uint public x;
    B(uint _x) public {
        x = _x;
    }
    function add() public {
        x = uint(x / 100 ** 2);
        x += uint(x / 10);
    }
    function sub() public {
        x = uint(x / 100);
        x += uint(x / 10);
    }
}
pragma solidity ^0.8.0;
contract B {
    uint public x;
    B() public {
        x = 5;
    }
    uint public z;
    function mul(uint _z) public {
        uint z1;
        z1 = uint(_z / 1000);
        z = uint(_z / 100);
        x += z1 - z;
    }
}
pragma solidity ^0.8.0;
contract B {
    uint public x;
    B() public {
        x = 5;
    }
    uint public y;
    function sub(uint _y) public {
        uint y1;
        uint z;
        z = uint(_y);
        y1 = uint(_y / 1001);
        y += z * 10 + y1;
    }
}
pragma solidity ^0.8.0;
contract B {
    B(uint _x) public {
        x = _x;
    }
    uint public y;
    uint public z;
    uint public w;
    function add(uint _w) public {
        uint w1;
        w1 = uint(_w);
        w = w1 + 100;
        z = w + 10;
    }
    function sub(uint _y) public {
        uint y1;
        uint z;
        uint z_;
        y1 = uint(_y);
        z = uint(_y / 1001);
        z_ = uint((z / 10) * 10 + 100);
        y += z_ + y1 * 10 + (z + uint(z / 1000) * 10);
    }
}
