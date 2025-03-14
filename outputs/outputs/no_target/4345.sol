pragma solidity ^0.8.0;
contract N {
    struct Foo {
      uint32 foo;
    }

    Foo f;

    function update(uint256 _foo) public {
      f.foo = _foo;
    }

    function m() public pure {
      uint32 _foo;
      (uint32 _foo, bool) = f;
      update(_foo);
      require(_foo == f.foo);
    }
}

pragma solidity ^0.8.0;
contract Q {
    struct Foo {
      address bar;
    }

    address a;

    function o(Foo x) public pure {
      a = x.bar;
    }
}
contract W {
    function w() public pure {
      Q.Foo memory x;
      Q memory q;
      Q.o(x);
    }
}
contract E is Q {
    function e() public pure {
      uint256 i = f.foo;
    }
}
contract B is N {
    function b() public pure {
      uint32 _foo;
      (uint32 _foo, bool) = f;
      assert(_foo == f.foo);
      f.foo = 1;
      _foo = _foo + 1;
      assert(_foo == 2);
      assert(f.foo == 3);
    }
}

pragma solidity ^0.8.0;
contract S {
    function m(uint256 x) public pure {
      uint256 i = x;
      i += 1;
    }
}
contract K {
    function m(uint256 x) public pure {
      uint256 i = x;
      i++;
    }
}
contract R {
  function g() public pure {
    S s;
  }
}
contract N {
    struct Foo {
      uint32 foo;
    }

    Foo f;

    function update(uint256 _foo) public {
      f.foo = _foo;
    }

    function m() public pure {
      uint32 _foo;
      (uint32 _foo, bool) = f;
      update(_foo);
      assert(_foo == f.foo);
    }
}
contract Q {
    struct Foo {
      address bar;
    }

    address a;

    function o(Foo x) public pure {
      a = x.bar;
    }
}
contract W {
    function w() public pure {
      Q.Foo memory x;
      Q memory q;
      Q.o(x);
    }
}
contract E is Q {
    function e() public pure {
      uint256 i = f.foo;
    }
}
contract B is N {
    function b() public pure {
      uint32 _foo;
      (uint32 _
