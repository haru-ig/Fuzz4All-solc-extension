pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    uint256 internal internalVar;
    uint16 internal internalVar2;
    uint16 i;
    modifier myModifier {
      internalVar += 10;
      internalVar2 = 1;
      i += 32;
    }

    function myFunction() public {
      i = 0;
    }
  }
contract SemanticallyEquivalentAssemblyExample4 {
    function myFunction() public returns (uint16) {
      return myFunction2();
    }

    function myFunction2() internal returns (uint16) {
      return myFunction3() + internalVar2;
    }

    function myFunction3() public returns (uint16) {
      return myFunction4();
    }

    function myFunction4() public returns (uint16) {
      return myFunction5() + 156;
    }

    function myFunction5() internal returns (uint16) {
      return internalVar;
    }
  }

pragma solidity ^0.8.0
