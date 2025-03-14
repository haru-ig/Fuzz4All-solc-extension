pragma solidity ^0.8.0;
contract Mutated1 {
  uint public num;

  constructor() {
      num = 10000;
  }
}
pragma solidity ^0.8.0;
contract Mutated2 {
  uint public num;

constructor() {
      num = 10000;
}

  function change() {
      num = 0;
  }
}

pragma solidity ^0.8.0;
contract Mutated3 {
  uint public num;

constructor() {
      num = 20000;
  }

  function change() {

      num = 0;
  }
}

pragma solidity ^0.8.0;
interface Mutant{
    function add(int a) external returns (int);
}
pragma solidity ^0.8.0;
interface Mutant1{

    function add(int a) external returns (int) {}
    function add(int a) external returns (int) {}
}
