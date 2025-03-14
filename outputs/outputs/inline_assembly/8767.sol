pragma solidity ^0.8.0;
contract Test {
    uint a = 0;
    function value() public view returns(uint) {
        return a;
    }

    function setA(uint m) public {
        a = m;
    }
}

contract Test {
    uint x = 0;
    uint y = x;

    constructor (uint val) public {
        x = val;
    }

    function value() public view returns(uint) {
        return y;
    }
    function incX() public view returns(bool) {
      if(x == y){
        x = x + 1;
        return true;
      }
      return false;
    }








    function resetA() public view returns(uint){
      if (x == y) {
        x = x + 1;
        return 1;
       }
        return 0;
    }
}
