pragma solidity ^0.8.0;
contract Test50Mutant {
    uint x;
    function f() public returns (uint){
        uint _x;
        x = 3;
        _x = x + 5;
        return _x;
    }
}



pragma solidity ^0.8.0;
contract Test51Mutant {
   function f() public{
      uint[] memory x = new uint[](5);
      x[3]=123;
      x[4]=234;
      x[4]=345;
      x[4]=456;
      x[4]=567;
   }
}
