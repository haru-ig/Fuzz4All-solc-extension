pragma solidity ^0.8.0;
interface i {
    function m() external pure returns (uint x);
}

pragma solidity ^0.8.0;
interface i {
    function m() external pure returns (uint x);
}

pragma solidity ^0.8.0;
contract a {
    uint a;
    function a() public {
        a = msg.data.length;
    }
    uint a() constant public {
        a = msg.value;
    }
 }

pragma solidity ^0.8.0;
contract b {
    function b() public { }
    uint b() { return 1; }
}

pragma solidity ^0.8.0;
contract c {
    function c() public pure {
        uint x = msg.data.length;
    }
    function c() public {
        uint x = msg.value;
    }
}

pragma solidity ^0.8.0;
contract a {
    function a() public {


    }
}
contract b {
    function b() public { }
    function b() public pure { }
}
contract c {
    function c() public pure {
        uint x = msg.data.length;
        uint x = msg.value;
    }
    function c() public {
        uint x = msg.data.length;
        uint x = msg.value;
    }
}
contract d {
  function d() public pure {
    uint x = msg.data.length;
    uint x = msg.value;
    uint 1 2 = msg.data.length;
  }
  function d() public {
    uint x = msg.data.length;
    uint x = msg.value;
    uint 1 2 = msg.data.length;
  }
  uint d() { return 1; }
  function d() public pure {
    uint x = msg.data.length;
    uint x = msg.value;
    uint 1 2 = msg.data.length;
}
}
contract e {
  function e() public pure {
    uint x = msg.data.length;
    uint x = msg.value;
    uint 1 2 = msg.data.length;
    uint 1 3 = 0xC25D72B3;
    uint x = msg.sender;
    uint x = address(this);
    uint x;
  }
  function e() public {
    uint x = msg.data.length;
    uint x = msg.value;
    uint 1 2 = msg.data.length;
    uint 1 3 = 0xC25D7
