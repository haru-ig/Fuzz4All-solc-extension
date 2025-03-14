pragma solidity ^0.8.0;
contract SemanticsEquivalentMutated2 {
    uint public a;

    constructor (uint Z) public {
        a = Z * 5;
    }
    function increment() public {
        a = a + 1 + 2 ;
    }
    function update () public {
        a = a + b ;
    }
}
contract Mutators22SemanticallyEquivalentMutated {
  Mutators22SemanticallyEquivalentMutated2 sem2;

  uint public a = 5;
  uint public b = 2;
  constructor(uint X) public
  {
    b = X * 3;
    a = b;
  }
  function increment () public returns (uint) {
   return (a + 4);
  }
	function update () public {
    a =  b + (a + 1);
  }
}
