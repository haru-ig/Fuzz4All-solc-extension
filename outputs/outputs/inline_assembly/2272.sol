pragma solidity ^0.8.0;
contract SimpleMath
{
    uint a;
    mapping(uint => uint) b;
    constructor() {
        a = 0;
        b[2] = 2;
    }
    function update() public {
        a = a + b[2];
        b[1] = 1;
        b[2] = 3;
    }
}

pragma solidity ^0.8.0;
contract SimpleMath
{
    uint a;
    mapping(uint => uint) b;
    constructor() {
        a = 0;
        b[2] = 2;
    }
    function update() public {
        a = a + b[2];
        uint c;
        assembly {
            c := a + 2
        }
        a = c;
        b[1] = 1;
        b[2] = 3;
    }
}
