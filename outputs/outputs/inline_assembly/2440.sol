pragma solidity ^0.8.0;
contract Mutator42
{
    struct MyStruct {
        uint _A;
        uint _B;
    }
    uint public A;
    function write(MyStruct memory _myvar) public {
      A = _myvar._A;
    }
    function increase(uint _decrease) public {
        A = A + _decrease;
    }
    function decrease(uint _increase) public {
        A = A + _increase;
    }
}
