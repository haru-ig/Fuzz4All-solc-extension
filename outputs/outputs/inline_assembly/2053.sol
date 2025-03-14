pragma solidity ^0.8.0;

contract test {
SimpleY9 public SimpleY9 = SimpleY9(0x421683a6d894f89d7ce6c70b47b56487a4c51c19);
uint public constant myStaticNumber = 1;
uint256 public constant myNumber = 0.1;

function increment()public {
this.SimpleY9.myfunctionreturningNumber();
}

function incrementReturning()public pure {
return(this.SimpleY9.myfunctionreturningNumber());
}

}
