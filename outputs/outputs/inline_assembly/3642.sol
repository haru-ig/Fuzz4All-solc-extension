pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsUsingYulWithSemantics {
  uint public r;
  event SetAAddress(address address_set);
  constructor() {
    r = 3;
    emit SetAAddress(a_address);
    emit SetAAddress(a_address);
    emit SetAAddress(a_address);
    emit SetAAddress(address(a));
    emit SetAAddress(a);
    emit SetAAddress(address(a));
  }
}

pragma solidity ^0.8.0;
contract SoliditySemanticsMutated {
  address public a;
  address public b;
  address public c;
  address public d;
  address public e;
  uint public g;
  uint public r;
  constructor() {
    r = 3;
    b = modifiesAddress(a);
    emit modifiesAddress(a);
    d = modifiesAddress(a);
    emit modifiesAddress(a);
    b = modifiesAddress(b);
    emit modifiesAddress(b);
    b = modifiesAddress(c);
    emit modifiesAddress(c);
    d = modifiesAddress(d);
    emit modifiesAddress(d);
    b = modifiesAddress(b);
    emit modifiesAddress(b);
    b = modifiesAddress(a);
    emit modifiesAddress(a);
    b = modifiesAddress(a);
    emit modifiesAddress(a);
    a = modifiesAddress(a);
  }
}
