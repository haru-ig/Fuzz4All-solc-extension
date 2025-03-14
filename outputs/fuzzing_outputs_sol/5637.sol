pragma solidity ^0.8.0;
contract semanticallyequivalent3
{
        uint public x = 1;
        function f() public pure
        {
        assembly {
        f
        }
        }
}



pragma solidity ^0.8.0;
contract Caller
{
     function g() public
    {
      semanticallyequivalent2.f();
      semanticallyequivalent2.f;
      semanticallyequivalent2.f(1);
      semanticallyequivalent3.f();
      semanticallyequivalent3.f(1);
    }

    function h() public { f(); f; }
    function i() public { f; f(1); }
    function j() public pure { f }
    uint public constant x = 1;
    function k() public pure { uint memory memory }
     function l() public pure { uint }
     function m() public pure { f(); memory memory; }

    function f() public pure {
        uint public local = 2;

    assembly {
        local := m1, add memory, m2
        m1 := m1, add memory, mul m1, add memory, m2
    }



    }

    function g() public pure {
        uint memory x ;
        x := x + 1 ;
    }
}
