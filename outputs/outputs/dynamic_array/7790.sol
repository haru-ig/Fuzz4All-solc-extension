pragma solidity ^0.8.0;
contract Test11 {
    uint8[100] private _value;
    uint8 private _mem;
    uint8[42] private _value1;
    constructor()
        public
    {
        _mem = _value1[41];
        _value[4] = _mem;
    }
}

pragma solidity ^0.8.0;
contract Test12 {
    uint8[100] private _value;
    uint8 private _mem;
    uint8[42] private _value1;
    constructor()
        public
    {
        _mem = _value1[41];
        _value[4] = _mem;
    }

    function __mem_swap__()
        public
        pure
        returns(uint8)
    {
        return _mem;
    }

    function __mem_swap1__()
        public
        pure
        returns(uint8)
    {
        return _value1[41];
    }

    function __mem_swap2__()
        public
        pure
        returns(uint8)
    {
        return _value1[42];
    }
}

pragma solidity ^0.8.0;
contract Test13 {
    uint8[100] private _value;
    uint8 private _mem;
    uint8[42] private _value1;
    constructor()
        public
    {
        _mem = _value1[41];
        _value[4] = _mem;
    }

    function __get_mem_swap()
        public
        pure
        returns(uint8)
    {
        return _mem;
    }

    function __get_value_1_swap()
        public
        pure
        returns(uint8)
    {
        return _value1[41];
    }

    function __get_value_2_swap()
        public
        pure
        returns(uint8)
    {
        return _value1[42];
    }

    function __mem_swap__()
        public
        pure
        returns(uint8)
    {
        return _mem;
    }

    function __mem_swap1__()
        public
        pure
        returns(uint8)
    {
        return _value1[41];
    }

    function __mem_swap2__()
        public
        pure
        returns(uint8)
    {
        return _value1[42];
    }
}
