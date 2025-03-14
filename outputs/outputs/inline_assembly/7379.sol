pragma solidity ^0.8.0;
contract Equivalent_assembly_2 {
  uint constant constant1 = 10;
  uint constant constant_2 = constant1 + 1;

  uint constant constant_3 = constant_2 + 1;

  uint constant constant_4 = constant_3 + 1;

  uint constant constant_5 = constant4 + 1;

  uint constant constant_6 = constant_4 + 1;

  uint constant constant_7 = constant_5 + 1;

  uint constant constant_8 = constant_5 + 1;

  uint constant constant_9 = constant5 + 1;
}

pragma solidity ^0.8.0;
contract Equivalent_assembly_3 {
  function constant_function1() public pure {
    return 10;
  }
  function constant_function2() public pure {
    constant_function1();
    return constant_function1() - 2;
  }
  function constant_function3() public pure {
    constant_function2();
    return constant_function2() * constant_function1();
  }
  function constant_function4() public pure {
    constant_function3();
    return constant_function3() - 10;
  }
  function constant_function5() public pure {
    constant_function4();
  }
}
