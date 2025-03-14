pragma solidity ^0.8.0;
contract first{
    bytes1 public p;
}
contract second{
    address public p;
}
contract third{
    address[] public p;
}
contract fourth{
    bytes1 p;
}
contract fourth{
    function getfirst() public pure returns(bytes1){ return p; }
}
contract test{
    function f() public returns(address){
      return new first().p;
    }
    function f2() public returns(address){
      return new second().p;
    }
    function f3() public returns(address){
      return new third().p;
    }
    function f4() public returns(address){
      return new fourth().p;
    }
}
