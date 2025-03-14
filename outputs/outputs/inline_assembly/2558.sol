pragma solidity ^0.8.0;
contract Comp5 {
    uint256 public _a;
    constructor() public {
        _a = 0;
    }
    function add(uint256 _b) public {
        _a = _a + _b;
    }
}
pragma solidity ^0.8.0;
contract Comp4 {
    uint256 _a;
    constructor() public {
        _a = 0;
    }
    function add(uint256 _b) public {
      _a = _a + _b;
    }
    function subtract(uint256 _b) public {
      _a = _a - _b;
    }
}
contract Comp6 {
    uint256 public _a;
    constructor() public {
        _a = 0;
    }
    function add(uint256 _b) public {
      _a = _a + _b;
    }
    function subtract(uint256 _b) public {
      _a = _a - _b;
    }
    function increment() public {
      _a = _a + 1;
    }
    function decrement() public {
      _a = _a - 1;
    }
}

contract Comp5 {
  uint256 public _a;
  constructor() public {
    _a = 0;
  }
  function add(uint256 _b) public {
    _a = _a + _b;
  }
}
