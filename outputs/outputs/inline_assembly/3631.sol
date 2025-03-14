pragma solidity ^0.8.0;
contract YulInlinedModifiesSquashGenerations extends ModifiesSquashGenerationsUsingYulWithSemantics {

  constructor () {
    d = a_address;
    d = a_address;
    d = a_address;
    a_address = address(a);
    d = c;
    a_address = a;
    d = a_address;
    d = a_address;
    d = a_address;
    d = a_address;
    c = a;
  }
}
