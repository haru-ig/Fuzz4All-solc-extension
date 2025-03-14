pragma solidity ^0.8.0;
contract SemanticalEquiv64 {
    uint _value;
    function f() public returns (uint){
        return _value;
    }
    bool valueExists;
    modifier setValue{
        _value = 5;
        valueExists = true;
        _;
    }
}

pragma solidity ^0.8.0;
contract SemanticalEquiv64 {
    uint s_val1;
    uint s_val2;
    uint162 a;
    uint162 b;
    uint216 c;
    uint256 d;
    uint128 e;
    function set1(uint162 b) public {
        s_val1 = 5;
        s_val2 = 6;
        a = b;
        _;
    }
    function set2(uint162 b) public {
        s_val1 = 5;
        s_val2 = 6;
        b = s_val1;
        _;
    }
    function set3(uint162 b1, uint162 b2) public {
        s_val1 = 5;
        s_val2 = 6;
        b1 = s_val1;
        b2 = s_val2;
        _;
    }
    function set4(uint162 b1, uint162 b2, uint8 x) public {
        s_val1 = 5;
        s_val2 = 6;
        b1 = s_val1;
        b2 = s_val2;
        set1(b1 + 5);
        set2(b2 + 6);
        set3(s_val1 + 5 + x, s_val2 + 6 + x);
        valueExists = true;
        _;
    }
    function set5(uint162 b1, uint162 b2, uint8 x) public {
        s_val1 = 5;
        s_val2 = 6;
        b1 = s_val1;
        b2 = s_val2;
        set1(b1 + 5);
        set2(b2 + 6);
        set3(s_val1 + 5 + x, s_val2 + 6 + x);
        (b1, b2, valueExists) = (b1 + 5, b2 + 6, valueExists);
        _;
    }
    function set6(uint162 b1, uint162 b2, uint8 x) public {
        s_val1 = 5;
        s_val2 = 6;
        b1 = s_val1;
        b2 = s_val2;
        uint162 b3 = set1(b1 +
