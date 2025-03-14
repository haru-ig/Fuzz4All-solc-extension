pragma solidity ^0.8.0;
contract Solidity8To9 {
    event E1(uint val);
    modifier m1()
    {
        E1(a);
        _;
    }
    modifier m2()
    {
        E1(a);
        m1();
    }
    constructor() public {
        E1(a);

        m1();
        m2();
    }
}
