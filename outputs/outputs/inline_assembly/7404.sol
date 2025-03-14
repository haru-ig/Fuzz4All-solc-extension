pragma solidity ^0.8.0;
contract Equivalent_contract {
  function test( ) public pure {
    asm { mSTORE(0x40,  6 ) }
  }
}
contract Equivalent_contract7 {
  function test( ) public {
    Equivalent_contract contract1 = new Equivalent_contract();
    Equivalent_contract contract2 = new Equivalent_contract2();
  }
}
contract Equivalent_contract2 {
  function test( ) public pure {
    asm {
     mSTORE(0x40, 0x55)
    }
  }
}
contract Equivalent_contract6 {
  function test( ) public pure {

  }
}
contract Equivalent_contract4 {
  function test( ) public pure {
    asm {
     mSTORE(0x40, 0x55)
     mSTORE(0x48, 0x65)
    }
  }
}
contract Equivalent_contract3 {
  function test( ) public pure {
    asm { mSTORE(0x40, 0x55) mSTORE(0x48, 0x65) }
  }
}
contract Equivalent_contract8 {
    function test( ) public pure {
    asm { mSTORE(0x40, 0x55); mSTORE(0x48, 0x65) }
    }
}
