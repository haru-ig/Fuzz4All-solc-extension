pragma solidity ^0.8.0;
contract m106 {
    uint public x = 0;
    uint public y = 0;
    uint public z;
    constructor() public {
        z = 3;
    }
    function setX(uint a) public{
        x = a;
    }
    function add(uint y, uint z) public{
        y += z;
    }
}

pragma solidity ^0.8.0;
contract m106 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    uint public x1;
    uint public y1;
    uint public z1;
    uint public w1;
    address public addr1;
    address[] public addr2;
    uint[] public y2;
    constructor() public {
        addr1 = 0x34f222;
        addr2.push(addr1);
        addr1.transfer(this, 50);
    }
}
