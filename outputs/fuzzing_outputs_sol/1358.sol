pragma solidity ^0.8.0;
contract Contract {
    fallback function fallback_Fallback() public pure {}
}
contract Caller {
    function Caller() public {}
    function call_Caller_01_01()
        public
        payable
        returns (address)
    {
        return address(new Contract());
    }
    function call_Caller_01_02()
        public
        payable
        returns (address)
    {
        return address(new Contract{ receive() {} }());
    }
    function call_Caller_02_01(address contract_)
        public
        payable
        returns (address)
    {
        return contract_;
    }
    function call_Caller_03_01()
        public
        payable
        returns (address)
    {
        return address(new Contract{ receive() {} }());
    }
    function call_Caller_03_02()
        public
        payable
        returns (address)
    {
        unchecked { return address(this); }
    }
}
contract Contract {
    function f_01() public pure {}
    function f_02() public pure {}
    function f_03() public pure {}
    pure function f_03_01() public pure {}
    pure function f_03_02() public pure {}
    pure function f_03_03() public pure {}
    struct DummyStruct {
        uint foo;
    }
    function f_04() public pure {
        if (uint8(0) < 24) {
            f_02();
        }
    }
    function f_05() public pure {
        uint8 foo = 0;
        uint8 bar = 5;
        f_03(foo, bar);
    }
    function f_06(uint8 bar, uint8 baz) public pure {
        if (uint8(0) > 128) {
            f_02();
        }
    }
    function f_07(uint8 bar, uint8 baz) public pure {
        uint8 foo = 99;
        f_03(foo, bar);
    }
    function f_08(uint8 bar, uint8 baz, uint8 jun) public pure {
        uint8 foo = 100;
        if (uint8(0) < 100) {
            f_03(foo, bar);
        }
    }
    function f_09(uint
