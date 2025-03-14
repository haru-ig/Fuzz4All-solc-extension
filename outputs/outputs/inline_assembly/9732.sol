pragma solidity ^0.8.0;
contract MutantYulContract {
 uint internal contractCounter;
 uint constant c = 0x01;
     function multiply(uint z) public returns (uint) {
        uint x = z * c;
        if (z == 1) {
            return x >= 1 + c? x : x + c;
          } else {
            return x < 1 + c? x : x + c;
        }
    }
}

pragma solidity ^0.8.0;
library MutantYulLibrary {
  function multiply(uint _z) public pure returns (uint) {
     return _z * c;
    }
}
contract MutantYulContract is MutantYulLibrary{
    function contractCounter() public view returns(uint) {
        return contractCounter++;
    }
}
contract MutantYulLibraryTester {
    function contractCounter() public view returns(uint) {
        return contractCounter();
    }

    function test() view returns (uint) {
        return address(new MutantYulContract()).contractCounter();
    }
}

pragma solidity ^0.8.0;
contract MutantYulContract {
 uint internal contractCounter;
 uint constant c = 0x01;
     function multiply(uint z) public returns (uint) {
        uint x = z * c;
        if (z == 1) {
            return x >= 1 + c? x : x + c;
          } else {
            return x < 1 + c? x : x + c;
          }
    }
}
contract MutantYulTester {
    function test() view returns (uint) {
        MutantYulContract mutant = address(new MutantYulContract());
        return mutant.contractCounter();
    }

    function test2() view returns (uint) {
        MutantYulContract mutant = new MutantYulContract();
        return mutant.contractCounter();
    }

}


/* The following is your sample output after compilation which runs successfully
0x90d9030606091061017f6000396000f3606060a0600
