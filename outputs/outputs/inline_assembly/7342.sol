pragma solidity ^0.8.0;
contract Mutations_semantics1{
  uint constant constant1 = 13;
  uint constant constant2 = 25;
  uint constant constant3 = 40;
  uint constant constant4 = 1;
}
contract Mutations_semantics2 {
  uint constant constant1 = 240;
  uint constant constant2 = 100;
  uint constant constant3 = 90;
  uint constant constant4 = 700;
}
contract Mutations_semantics3 {
  uint constant constant1 = 1000;
  uint constant constant2 = 10;
  uint constant constant3 = 200;
  uint constant constant4 = 700;
}
contract Mutations_semantics4 {
  uint constant constant1 = 3;
  uint constant constant2 = 100;
  uint constant constant3 = 90;
  uint constant constant4 = 700;
}
pragma solidity ^0.8.0;
contract Mutations_bad1 {
  function bad(bytes memory) public pure {


    bytes memory empty;
    Assembly.return(empty);
  }
}
pragma solidity ^0.8.0;
contract Mutations_bad2 {
  function bad(bytes memory) public pure {
    bytes memory nothing;
    Assembly.return(nothing);
  }
}
