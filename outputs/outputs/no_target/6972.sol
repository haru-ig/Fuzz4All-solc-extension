pragma solidity ^0.8.0;
contract TestPrecompiled2705 {
    modifier precompile(int a) {
        uint result = a * 500;
        assert(result >= 0);
        _;
    }

    modifier onlySender() {
        if (msg.sender == address(this)) {
            _;
        } else {
            assert(false);
        }
    }

    function test() public payable {
        if (true) {
            precompile(1);
        }
        if (true) {
            precompile(2);
        }
        if (true) {
            precompile(3);
        }
        if (true) {
            precompile(4);
        }
        if (true) {
            precompile(5);
        }
    }
}

pragma solidity ^0.8.0;
contract TestPrecompiled963b {
    uint[] storage storageData = new uint[](6);

    constructor() {
        if (true) {
            storageData[0] = 400;
            storageData[5] = 10;
        }
    }

    function test() public pure returns (uint) {
        return storageData[3];
    }
}

pragma solidity ^0.8.0;
contract TestPrecompiledde3 {
    int intData;

    constructor() {
      intData += 40;
    }
    modifier onlyFromCaller() {
        if (msg.sender == sender) {
            _;
        } else {
            assert(false);
        }
    }

    uint8 test() public onlyFromCaller returns(bool) {
      return false;
    }

    uint256 test() public onlyFromCaller returns (uint256) {
      return 23;
    }
}

contract TestPrecompiled5441 {
  bool boolData;

  constructor() {
    boolData = true;
    int i = 1000;
    boolData = true;
    i = 9223372036854775700000000000000000000;
  }

  function test() public view returns(uint256 val) {
      return 23;
  }
}
