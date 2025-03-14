pragma solidity ^0.8.0;
contract mutation
{
    uint public x;
    modifier p() {
        x = x + 1;
        _;
    }
    function g() public p {
        uint b;
    }
}


contract X is mutation {

    modifier m()
    {
        uint x = 2;
        x = 3;
        _;
    }


    function call(semanticallyequivalent _x) public {
        uint g;
        _x.f(1);


        g = _x.f(1);
        g.f(1);
        g.f(1);
        g = _x.f(1);
    }


    function callfallback() public {
        fallback();
    }


    function constant() public view returns (uint) {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    uint x;
    fallback() external {
        x = x.add(1);
    }
    function f() public view returns (uint) {
        return x;
    }
}
