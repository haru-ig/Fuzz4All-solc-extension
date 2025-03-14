pragma solidity ^0.8.0;
contract Ghost {
    function ghost() public pure {
        require (false);
    }
}
contract Immutable {
    function _immutable() public pure {}
}
contract Base {
    constructor () {
    }
}
contract Derived is Immutable, Base {}
contract D is Derived {
    constructor () public Base () {}
}
contract C {
    function f() public pure {
        Ghost g;
        g.ghost();
        im;
        im;
    }
}
contract C2 {
    uint256 x;
    function f() public pure {
        x = Ghost.ghost();
        x = im;
        x = im;
        x = im;
        x = im;
        x = im;
    }
}
contract ImmutableStorage {
    uint public immutable storage1 = 1;
    uint public storage2 = this;
    uint256 public immutable storage3 = 1;
    uint256 public immutable storage4 = storage2;
    uint256 public immutable stoarge5 = storage5;
}
contract CStorage is ImmutableStorage {
    constructor () public {}
    function f() public pure {
        this.x;
        storage;
        storage1;
        storage2;
        storage3;
        storage4;
        storage5;
        storage6;
    }
}
contract GhostFunction {
    function a(uint a) public pure {
        x = a;
        uint x2;
    }
}
contract CFunction {
    GhostFunction a;
    uint32 x;
    function f() public pure {
        a.a(413);
        a.x;
        x;
    }
}
contract CFunction2 {
    uint32 x;
    uint32 y;
    function f() public pure {
      a.a(413);
      a.x = 448;
      a.x;
      a.y;
      x;
      x = storage2;
      x;
      memory;
      storage2;
      this;
      this.x;
      this.x.x;
    }
}
contract CFunction3 {
    constructor () public(uint a) public(storage2) public(this) public(a) public(42) public(44) public(x) public(64) public(x,x,storage2) public(y,y,x.x) public(storage2,storage2,storage2) public(this,this,this,this.x) public(this.x) public(44,x) public(this.x,this.x,this.x,this.x,this.x,x.x,44,x.x) public(this.x.x) public(this.x.x.x) public(this.x.x.x,this.x.x.x) public(this.x,this.x,this.x
