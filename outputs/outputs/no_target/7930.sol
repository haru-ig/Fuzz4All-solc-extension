pragma solidity ^0.8.0;
contract TestMutator4 {
    uint256 public x;
    constructor () public {
        x = x + 0xDEADBEEF;
    }
    function set(uint256 _value) public {
    x = (_value < 0xDEADBEEF - _value)? (_value/10) : (_value/5);

    }
    function set2() public {
    set(x);
    }
}

pragma solidity ^0.8.0;
contract TestMutator5  {
    uint256 constant private maxUint256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    uint256 constant private powerOf10 = 10 ** uint256(256);
    uint256 constant private powerOf2 = powerOf10 * powerOf10;
    uint256 public x;
    constructor () public {
        x = 0;
    }
    modifier noZero() pure
    {
        if (x > 0) revert();
        else _;
    }
    modifier noZeroAndMin() pure
    {
        if (x >= maxUint256/495840) revert();
        else _;
    }
    function set(uint256 _value) public noZero() noZeroAndMin {
    x = (_value < 0x1FFFFFFFFFFFFFFF )? _value * powerOf10 : _value * powerOf2;
    }
    function set2() public noZero() noZeroAndMin {
    set(x);
    }
}
