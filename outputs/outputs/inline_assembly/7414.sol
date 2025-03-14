pragma solidity ^0.8.0;
contract Equivalent_contract12 {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
}
contract Equivalent_contract12_copyable {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  function __Equivlent_contract12__copyable_() public {
    (uint constant constant1 = 10, uint constant constant2 = 11) = Equivalent_contract12.({ constant1, constant2 });
  }
}
contract Equivalent_contract12_new {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  function __Equivlent_contract12_new__() public pure {
    (uint constant constant1, uint constant constant2) = Equivalent_contract12.({ constant1, constant2 });
  }
}
contract Equivalent_contract12_old {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  function __Equivlent_contract12_old__() public pure {
    (uint constant constant1, uint constant constant2) = Equivalent_contract12.({ constant1, constant2 });
  }
}


pragma solidity ^0.8.0;
contract Equivalent_contract13 {
  uint constant constant1 = 10;
  uint constant constant2 = 11;
}
contract Test_contract14_old {
  uint constant constant1 = 10;
  address constant constant2 = 0xCf9eB9622b1e2b2e8d1736044703bB99Fc99E3D8;
  address constant constant3 = 0xF92C495b65F8Ca2C5F413248d260A7f782bB0D9C;
  uint constant constant4 = 11;
  uint constant constant5 = 12;
  function __Test_contract14_old__() public constant {
    (uint constant constant1, address constant constant2) = Equivalent_contract13.({ constant1, constant2 }); /* Same
