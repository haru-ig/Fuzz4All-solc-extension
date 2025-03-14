pragma solidity ^0.8.0;
contract M {
    enum Foo { BLA, GRE, BLUE };

    function() {

    }

    function g() external {
      assert(_a() == Foo.GRE);
    }


    modifier h {
      assert(_a()!= Foo.GRE);
      _;
    }

    event MyEvent(Foo _param);

    uint8 private _a_;

    function a() public view returns (Foo) {
      return _a_;
    }

    function _a() internal view returns (Foo) {
      return _a_;
    }

    function _a(Foo x) internal view returns (Foo) {
      return x;
    }

    function _a_i() internal pure returns (Foo) {
      return Foo.GRE;
    }

    function _a_2(Foo x) internal view returns (Foo) {
      return x;
    }

    function _a_0_2_5(Foo x) internal view returns (Foo) {
      return Foo.GRE;
    }

    address private _addr_;

    function addr() public view returns (address) {
      return _addr_;
    }
  }
