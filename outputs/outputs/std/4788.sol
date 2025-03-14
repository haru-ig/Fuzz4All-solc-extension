pragma solidity ^0.8.0;
contract C {
  uint x;
  uint[] p;
  address[] public q;
  function c() public {
    p.push(uint256(0));
    p[1]=uint256(0);
  }
}
pragma solidity ^0.8.0;
contract D {
  uint x;
  uint[] q;
  address[] public r;
  function d() public {
    q.push(uint256(0));
    q[1]=uint256(0);
  }
}
pragma solidity ^0.8.0;
contract A {
  address[] p;
  G[] public q;
  C[] public r;
  function a() public {
    p.push(address(0));
    p[1]=address(0);
    p[2]=address(0);
    q.push(G({}));
    q[1].g();
    q[2].g();
    r.push(C({}));
    r[1].c();
    r[2].c();
    r[3].c();
    r[4].c();
  }
}
