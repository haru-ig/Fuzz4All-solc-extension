pragma solidity ^0.8.0;
contract Solidity {
    uint i = 50;
    address owner;
    constructor () {
        owner = msg.sender;
    }
    modifier isOwner() {
        require(owner == msg.sender, "Not Owner");
        _;
    }
    function setI(uint newI) public isOwner {
        i = newI;
    }
}

contract Simple {
    function f() public pure {
        uint i;
    }
}

contract InlineAssembly {

    bool flag;
    uint x;

    struct Memo {
        int num;
        uint val;
    }

    modifier foo() {
        flag;
        flag;
    }
    function foo2(uint _x) public pure foo {
        x = _x;
    }

    mapping(uint[7]) public y;
    function set_y(uint _v, uint[7] memory _y) public {
        flag;
        x = _v;
        uint i;
        for (i = 0; i <= 6; i++) {
            y[i][0] = uint(_y[0]);
            y[i][1] = uint(_y[1]);
            y[i][2] = uint(_y[2]);
            y[i][3] = uint(_y[3]);
            if (y[i][2] == uint(2)) {
                y[i][2] = uint(1);
            }
            y[i][5] = uint(1);
            y[i][4] = uint(2);
        }
    }



}

contract Solidity {
    uint i;
    uint x = 1;

    constructor () {
        i = 50;
    }

    function set(uint newX) public {
        x = newX;
    }
}


pragma solidity ^0.8.0;
contract Solidity {
    uint x;
    uint y = 10;

    function setX(uint z) public {
        x = z;
    }
}
