pragma solidity ^0.8.0;
contract Test94A9 {
  interface A {
    function f_() external;
    function g_() external;
  }
  contract C {
    function f_() public pure {
      A a = A(msg.sender);
      a.g_();
    }
    function g_() public pure {
      A m = A(msg.sender);
      A u = A(0);
      A l = A(0x1);
      A c = u;
      A e = l;
      A f = c;
      A h = e;
      A r = f;
      l.f_();
      f.g_();
      h.e_();
      c.f_();
      c.f_();
      A i = l;
      A p = r;
      A b = m;
      A o = l;
      f.f_();
      p.f_();
      p.f_();
      p.f_();
      i.i_();
      i.h_();
      p.j_();
      i.k_();
      p.f_();
      b.f_();
    }
  }
}
