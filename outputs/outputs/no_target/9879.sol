pragma solidity ^0.8.0;
import "./Interface.sol";

contract c11 is i{
    function m() external returns (uint x){
        x = 41 + 41;
        return x;
    }
}

pragma solidity ^0.8.0;
contract D {
function g() public view returns (uint){ return 42; }
function h() public pure returns (uint){ return 0;}
function m() public {
    uint a;
    a = 41;
    require((x * a) == (d + h()-5), "Error");

}
}

pragma solidity ^0.8.0;
  contract B {
    function f(D d){
        d.m();
     if(d.g()!= 42) revert();
}
  function x() public view returns (uint){
     B b;
     b.f(D(42));
     return 0;
    }
  }
