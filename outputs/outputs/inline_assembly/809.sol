pragma solidity ^0.8.0;

contract Mutator{
uint _counter;
uint a;
uint b;
 modifier onlyIncrement() {
      _counter ++;
      _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        if (b > 0) {
          _counter = 0;
          a = 0;
          return;
          b = 1+b;
        } else {
          _counter = _counter + 1;
        }
    }
        }

pragma solidity ^0.8.0;

contract Mutator{
uint _counter;
uint a;
uint x;
uint y;
uint z;
uint w;
uint xw;
 uint _state = 'a';

 modifier onlyX2(any memory x) {
      if ('x' == x) {
        _state = 'y';
        return;
      }
      _;
    }
   modifier onlyY(any memory y) {
      if ('y' == y) {
        _state = 'c';
        return;
      }
      _;
    }
   modifier onlyB(any memory b) {
      if ('b' == b) {
        _state = 'a';
        return;
      }
      _;
    }
   modifier onlyA(any memory a) {
      if ('a' == a) {
        _state = 'x';
        return;
      }
      _;
    }
  modifier onlyX1(any memory x) {
      if ('x' == x) {
        _state = 'xy';
        return;
      }
      _;
    }
     modifier onlyY1(any memory y) {
      if ('y' == y) {
        _state = 'xyz';
        return;
      }
      _;
    }

     function Increment(uint x, uint y, uint z, uint w) public onlyX2 ('x') onlyY1 ('y'){
        if (z > 0) {
          _counter = 0;
          a = 0;
          x = x+1;
          y = y+1;
          z = 1+z;
          w = 1+w;
          return;
          z = z+1;
          w = w+1;
        } else {
          _counter = _counter + 1;
        }
    }
		}
/* In the scope of this problem, you need to solve the
