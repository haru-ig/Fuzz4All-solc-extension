pragma solidity ^0.8.0;
contract Mutations_equivalent6 {
  uint constant constant1 = 120;
  uint constant constant2 = 20;
  uint constant constant3 = 90;
  uint constant constant4 = 700;
}
contract Mutations_equivalent7 {
  uint constant constant1 = 90;
  uint constant constant2 = 200;
  uint constant constant3 = 700;
  uint constant constant4 = 700;
}
contract Mutations_equivalent8 {
  uint constant constant8 = 120;
  uint constant constant9 = 20;
  uint constant constant10 = 90;
  uint constant constant11 = 700;
}

pragma solidity >=0.6.0 <0.7.0;
contract Mutations_equivalent9 {
  uint constant constant1= 120;
  uint constant constant2= 20;
  uint constant constant3= 90;
  uint constant constant4= 700;
}

pragma solidity ^0.7.0;
contract Mutations_equivalent10 {
  uint constant constant1= 120;
  uint constant constant2= 20;
  uint constant constant3= 90;
  uint constant constant4= 700;
}
contract Mutations_final {
  uint constant constant5 = 700;
  uint constant constant6 = 700;
  uint constant constant7 = 700;
}
