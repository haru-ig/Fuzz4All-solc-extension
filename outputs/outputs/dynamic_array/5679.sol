pragma solidity ^0.8.0;
contract Test79{
  function method78() public pure {
    uint[5] storage storage1;
  }
  function method79() public pure {
    uint[5] storage storage2;
    uint[5] storage storage3;
  }
}
contract Test{
  function method70() public pure {
    uint[] storage storage1;
  }
  function method71() public pure {
    uint[] storage storage2;
    uint[] storage storage3;
  }
}
contract Test7{
  function method72() public pure {
    uint[2,5] storage storage1;
  }
  function method73() public pure {
    uint[2,5] storage storage2;
    uint[2,5] storage storage3;
  }
}
contract Test8{
  function method74() public pure {
    uint[2,5][] storage storage1;
  }
  function method75() public pure {
    uint[2,5][] storage storage2;
    uint[2,5][] storage storage3;
  }
}
contract Test9{
  function method76() public pure {
    (uint[5] storage storage1, uint[5] storage storage2) storage storage1_2;
    uint[5] storage storage2;
  }
}
