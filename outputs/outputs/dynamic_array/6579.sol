pragma solidity ^0.8.0;

contract T9ES_mut1 is T9ES_mut
{
    constructor()
    {
        i1 = 0;
        i4 = 1;
        a = address(0);
        a1 = address(1);
    }

    constructor(uint _i) public
    {
        i1 = 0;
        i4 = 1;
        a = address(0);
        a1 = address(1);
        i = _i;
    }

    constructor(uint _i, uint _i1, uint _i4, address _a) public
    {
        i1 = 0;
        i4 = 1;
        a = address(0);
        a1 = address(1);
        i = _i;
        i1 = _i1;
        i4 = _i4;
        a = _a;
        a1 = _a;
    }

    constructor(uint _i, uint _i1, uint _i4, address _a, address _a1) public
    {
        i1 = 0;
        i4 = 1;
        a = address(0);
        a1 = address(1);
        i = _i;
        i1 = _i1;
        i4 = _i4;
        a = _a;
        a1 = _a1;
    }




    function f() public payable
    {
        a.transfer(uint(10));
        a1.transfer(uint(20));







        delete[] uint160[10];

        uint[3][3] memory marr;





    }
}
