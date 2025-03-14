pragma solidity ^0.8.0;
 contract Mutator16 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b%2 == 0) {
        _counter =  _counter + 1;
      }
      else {
        if (a % 4 == 0) {
_counter =  _counter + 1;
      }
      }
 }
}


pragma solidity ^0.8.0;
contract Mutator18 {
 function f(uint a, uint  b) public pure pure solidity returns (uint) {
      if (b == 2) {
        return 2;
      }
      else {
        return (b-1);
      }
  }
  function g(uint a, uint  b) public {
      uint x = f(a,b);
      if ((x % 2 == 0) && (a % 3 == 0)) {
        if (a % b == 2) {
          x = x + 17;
}
}
}

pragma solidity ^0.8.0;
contract Mutator19 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b == 2) {
        function h(uint y) internal pure pure returns (uint){
          _counter =  _counter + 7837;
return x;
      }
        h(x);
}
        x = 2;
        y = 5;
      }
      else {
        function h(uint y) internal pure pure returns (uint){
          y = y - 57;
          return (y);
      }
        x = h(x);
        y = x + 1;
}

}
