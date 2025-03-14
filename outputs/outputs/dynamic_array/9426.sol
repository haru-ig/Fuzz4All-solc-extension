pragma solidity ^0.8.0;
contract Arrays9{
    uint256[] public b2;
    uint16 public s;
    constructor() public {
        b2.push(3);
        b2[1] = 5;
        b2[3] = b2[2];
        b2[0] = 3;
    }
    function f() public {
        b2.push(10);
        b2[4] = 10;
    }
}

pragma solidity ^0.8.0;
contract Arrays10{
    uint256[] public b2;
    uint16 public s;
    constructor() public {
        b2.push(3);
        b2[1] = 5;
        b2[3] = b2[2];
        b2[0] = 3;
        s = s + s;
        s = s + s;
    }
    function f() public {
        b2.push(10);
        b2[4] = 10;
        s = s + s;
        s = s + s;
    }
    function g() public {
        b2.push(20);
        b2[5] = 20;
        s = s + s;
        s = s + s;
    }
}
