pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0x0;
  function f() public {
    x = getYul(x << 32 >> 32);
  }
  function getYul(uint y) private pure returns (uint) {
    y << 32 >> 32;
    return y;
  }
}

pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0x0;
  function f() public {
    x = getYul(getYul(x << 32 >> 32) << 32 >> 32);
  }
  function getYul(uint y) private pure returns (uint) {
    y + y + (y + y + (y << 32) >> 32) << 32 >> 32;
    return y;
  }
}

pragma solidity ^0.8.0;
contract E6G {
  uint16 x = 0x100;
  function f() public {
    x = fuck(x << 32 >> 32, 0xff);
  }
  function fuck(uint y, uint z) private pure returns (uint) {
    (y + (3 * z));
    return y;
  }
}


contract TestTest6g {
    function test1() external {
        E6G x = new E6G();
        x.f();
    }

    function test2() external {
        E6G x = new E6G();
        x.f();
        x.x = 0x0;
        x.f();
    }

    function test3() external {
        E6G x = new E6G();
        x.f();
        x.f();
    }

    function test4() external {
        E6G x = new E6G();
        x.f();
        x.f();
        x = new E6G();
        x.f();
    }
}
