pragma solidity ^0.8.0;
contract G {
  uint72[] public p;
  function g() public {
    p.push(1);
    p[1]=3;
  }
}

pragma solidity ^0.8.0;
contract G {
  uint72[] public p;
  function g() public {
    p.push(1);
    p.push(1);
  }
}

pragma solidity ^0.8.0;
contract G {
  uint72[] public p;
  function g() public {
    p.push(1);
    p.push(1);
    p.push(2);
  }
}
