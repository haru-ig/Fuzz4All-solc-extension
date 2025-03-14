pragma solidity ^0.8.0;
contract L10 {
    uint constant public value = 0xab2b344401d8bd7d1733f9a0c2b;
    mapping (uint => uint) public map;
    T public a;


    event Mapped(uint k);

    constructor ()public {
        map[1] = 23;
        a = T.E;
    }


    modifier x(uint x)
    {
        emit Mapped(x);
        x += value;
        _;
    }


    function f() public x(2) returns (uint) {
        return value;
    }

}

pragma solidity ^0.8.0;
