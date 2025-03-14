pragma solidity ^0.8.0;
contract SemanticallyEquivalenty2 {
    constructor () public {
      print("Sema1::");
      emit Log.from("Sema1", "", "");
      print("Sema2::");
      emit Log("Sema2", "", "");
    }
    event Log(string name, string args1, string args2);
}
