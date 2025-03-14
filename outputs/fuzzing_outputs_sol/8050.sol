pragma solidity ^0.8.0;
contract SemanticEquivalent_b is SemanticEquivalent
{
  uint8 private a_;
  uint16 public b_;
  uint64 public c_;
  uint128 public d_;
  bool public e_;
  int8 public f_;
  int16 public g_;
  struct S1
  {
    uint16 field_d_;
  }

  function semantic_equiv_d(uint16 num) public view returns (uint16, uint16)
  {
    return (10, 10);
  }
}
pragma solidity ^0.8.0;
contract MyContract
{
  function set_a(uint256 _a) public { a_ = _a; }
  function get_a() public view returns (uint256) { return a_; }

  function set_b(bool _b) public { b_ = _b; }
  function get_b() public view returns (bool) { return b_; }

  function set_c(uint256 _c) public { c_ = _c; }
  function get_c() public view returns (uint256) { return c_; }

  function set_d(uint256 _d) public { d_ = _d; }
  function get_d() public view returns (uint256) { return d_; }

  function set_e(bool _e) public { e_ = _e; }
  function get_e() public view returns (bool) { return e_; }

  function set_f(int256 _f) public { f_ = _f; }
  function get_f() public view returns (int256) { return f_; }

  function set_g(int16 _g) public { g_ = _g; }
  function get_g() public view returns (int16) { return g_; }
}

pragma solidity ^0.8.0;
contract MyContract_1
{
  function set_a(uint256 _a) public { a_ = _a; }
  function get_a() public view returns (uint256) { return a_; }

  function set_b(bool _b) public { b_ = _b; }
  function get_b() public view returns (bool) { return b_; }
}
pragma solidity ^0.8.0;
contract MyContract_2
{
  function set_a(uint256 _a) public { a_ = _a; }
  function get_a() public view returns (uint256) { return a_; }

  function set_d(uint256 _d) public { d_ = _d; }
  function get_d() public
