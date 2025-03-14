pragma solidity ^0.8.0;
contract G {
    event E ();
    mapping(uint => uint) x;
    function f() public returns (uint) {
        x[1] = 1;
        return 1;
    }
}

pragma solidity ^0.8.0;
contract X {
   function f() public returns(uint) {
      x.push(1);
      return 1;
   }
}
