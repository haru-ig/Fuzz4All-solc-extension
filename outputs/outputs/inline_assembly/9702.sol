pragma solidity ^0.8.0;
contract SemanticYulModifer {
   uint internal m = 4*8 + 5;
   uint constant c = 50;
    function subtract(uint x) public {
        if(x < 120) {
            m -= 8;
        } else {
            m = x* c - 8;
        }
    }
    function power(uint x) public {
        if(x < 120) {
            m -= 8;
        }else if(x < 10 * 10 * 10) {
            m = 4*c*c*c*x*c + 8* 4 + 4;
        } else {
            m = x* c * 8  + 8;
        }
    }
}
pragma solidity ^0.8.0;
contract Main {



  SemanticYulContract internal testContract;

  uint constant yul = 5000;


	constructor() {
		testContract = new SemanticYulContract();
	}

  function divide (uint) public pure {
      testContract.subtract(yul);
  }

  function power (uint) public pure {
      testContract.power(yul);
  }

}

/* When running the above script through ganache-cli, update the value of m and c to the same value as was previously in Main.sol.
Please also try modifying power, multiply, divide and subtract functions to make sure you get no output. What could be causing the
