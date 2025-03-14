pragma solidity ^0.8.0;
interface Mutable {
  function modify() external;
}
contract Mutator {
  Mutable mutable;
  constructor(Mutable m) {
    mutable = m;
  }
}
contract Contracts {
  constructor(Mutator m) {
    Mutator c = m;
    c.mutable.modify();
  }
}
