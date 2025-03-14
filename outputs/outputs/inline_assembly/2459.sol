pragma solidity ^0.8.0;
contract Mutator21
{
    uint public B;

    constructor(uint _B) {
      B = _B;
    }
    function f(uint _y) public f {
      B = B + _y * 2;
    }
  }

contract Programmer
{
    string public output;
    function f(uint _y) public f {
    output = output + _y.toString();
    }
  }

contract Compiler
{
    string public output;

    constructor() {
      output = "--No-Op--";
    }

    function f(uint _value) public f {
      output = output + _value.toString();
    }
  }




  function modify(uint _value) public returns (uint x) {
    x = _value;
    x = x + 5;
    x = x - 3;
    x += 2;
    x -= 1;
    return x;
  }
  function show() public returns (uint){
    return A;
  }
