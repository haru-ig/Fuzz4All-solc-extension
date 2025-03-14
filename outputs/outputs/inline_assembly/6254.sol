pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample11{
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }

  function main(MixedContacts memory s)
  public pure {
    s.x;
    s.y=s.x;
    s.y;
    s.x=1;
    s.y;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample12{
  struct MixedContacts {
      uint256 y;
  }

  function main(MixedContacts memory s)
  public pure {
    s.y;
    function f() public pure {
      s.y=s.y;
      s.y;
    }
    function g() public pure {
      s.y=s.y;
      s.y;
    }
    f();
    g();
    s.y;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample13{
struct MixedContacts {
    uint256 x;
    uint256 y;
}
    mapping(uint256 => uint256) internal _y;
    function main(MixedContacts memory s)
    public pure {
    _y[0]++;
    s.y;
    _y[0]--;
    s.y;
    _y[0]++;
    _y[1];
    s.y;
    _y[1]--;
    s.y;
    _y[1]++;
    s.y;
    _y[1]--;
    s.y;
}
}
 <fim_middle>contract MixedContactsExample14{
    struct MixedContacts1 {
        uint256 x;
        uint256 y;
        uint256 z;
    }
    constructor ()
      public
    {
        y;
        x=s;
    }
    function x()
    public view
        returns (uint256 x)
    {
        return x;
    }
    function y()
    public view
        returns (uint256 y)
    {
        return y;
    }
    function z()
    public view
        returns (uint256 z)
    {
        return z;
    }
    function f(MixedContacts1 memory s, uint256 c) public pure {
        s.z;
        s.y;
    }
    function g(MixedContacts
