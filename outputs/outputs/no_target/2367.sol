pragma solidity ^0.8.0;
contract mutationv57745
{
    function f() public pure
    {
        f();
    }
}
pragma solidity ^0.8.0;



contract mutationv54
{
    constructor(uint _amount) public
    {
        f(_amount);
    }
    function f() public pure
    {
    }
}

contract mutationv55
{
    constructor(uint _amount,uint _amount0) public
    {
        f(_amount0,_amount);
    }
    function f() public pure
    {
    }
}
contract mutationv59
{
    constructor(uint _amount) public
    {
        f(_amount);
    }
    function f() public pure
    {
        f(-_amount);
    }
}

contract mutationv38601
{
    constructor() public
    {
        f(1);
    }
    function f() public pure
    {
        f(-1);
        f(1);
    }
}

contract mutationv18079
{
    constructor() public
    {
        f(0);
    }
    function f(uint _amount) public pure
    {
        f(1,_amount);
    }
    function f(uint _amount0,uint _amount) public pure
    {
    }
}

contract mutationv28728
{
    contract Mutations
    {
        bool a;

        constructor() public
        {
            a = true;
        }

        function f() public pure
        {
            a = false;
        }
    }
    constructor(Mutations _m) public
    {
        m = _m;
    }
    Mutations m;
}

contract mutationv89013
{
    constructor() public
    {
        f(0);
    }
    function f() public pure
    {
        f(0,0);
    }
}

contract mutationv41743
{
    uint80 private A;

    constructor(uint80 _a) public
    {
        A = _a;
    }

    function f() public pure
    {
        f(uint80(1),uint80(_a));
    }

    function f0(uint80 _a0,uint80 _a) public pure
    {
        if (_a0 < _a) {   }
    }
}

pragma solidity ^0.8.0;
contract mutationv55035
{
    constructor(uint _amount) public
    {
        f(1,_amount);
    }
    function f(uint _amount0,uint _amount) private pure
    {
    }
}
