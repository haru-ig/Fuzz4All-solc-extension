pragma solidity ^0.8.0;
contract TestPrecompiled6949 {
    uint _dataValue;
    constructor() public{
      _dataValue = 0x123;
    }
    modifier m() {
        _;
    }
    function set(uint x) public m {
      require(x == _dataValue + 1, "failed");
      _dataValue = x;
    }
    function p() public {
        require(_dataValue > 0, "failed");
        _;
    }
}

pragma solidity >=0.8.0 <0.9.0;
contract TestPrecompiled179445 {
    function g() pure public returns (bool) {
        return true;
    }
    function f() public {
        if (!(msg.data.length <= 32)) {
            revert();
        }
    }

    constructor() {}
}
