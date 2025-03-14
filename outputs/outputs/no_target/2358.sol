pragma solidity ^0.8.0;
contract mutation_0b
{
    uint public z = 0;

    function test1(uint _a) public view
    {
        z += 1;
        z += _a;
    }

    function test2(uint _a, uint _b, uint _c, uint _d) public view
    {
        z += 2;
        z += _a;
        z += _b;
        z += _c;
        z += _d;
    }

    function test3(uint _a, uint _b) public view
    {
        z += 3;
        z += _a;
        z += _b;
    }

    function test4(uint _a, uint _b, uint _c) public view
    {
        z += 4;
        z += _a;
        z += _b;
        z += _c;
    }

    function test5(uint _a) public view
    {
        z += 5;
        z += _a;
    }
}
contract MutationV57789
{
  function f() public {
    Z[0] = 0;
    Z[1] = 0;

    S1[0].f(0, W[0]);
  }

  function g() public {
    S2[0] = 0;

    S1[1] = 0;
    W[1] = 0;

    f();
  }
}

contract MutationV56645
{
     function () payable {}
}

contract mutation_0c
{
    uint[] private myArray;

    function f() public returns (address)
    {
        W[1] = 0;


        myArray[0] = 0;

        return address(msg.sender);
    }

    function g() public returns (uint)
    {
        W[1] = 0;


        myArray[1] = 0;

        return myArray[0];
    }
}
