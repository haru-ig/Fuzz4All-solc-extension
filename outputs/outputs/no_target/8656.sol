pragma solidity ^0.8.0;
contract MutatedTest
{
    function f(uint256 x_in) public view returns (uint256)
    {
        if (x<1){
            x_ = 0;
        }
        x_=x_in;
    }
}
contract OldABIv2
{
    function f() public view returns (uint256)
    {
        return 0;
    }
}
contract NewABIv2
{
    function f() public view returns (uint256)
    {
        x_ = 0;
        return x_;
    }
}

contract ABIdummy {
    function f1(uint b) public view => 0;
    constructor() => f1(0);
    receive() {}
}

contract ABIdummyV1
{
    function f2(uint _) public view returns (uint) {
        return 0;
    }
    constructor() => f2(0);
    receive() {}
}

contract ABIdummyV2
{
    function f3(uint _x) public view returns (uint) {
        x_ = _x;
        return 0;
    }
    constructor() => f3(0);
    function f2(uint) public view returns (uint)_x {
        _x = 0;
        return 0;
    }
    receive () {
    }
}

contract MutatedTest
{
    function f(uint x) public view returns (uint)
    {
        x = x.f1(x-1);
        x=x.f2(x-.0000001);
        x=x.f3(x);
    }
}
