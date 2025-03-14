pragma solidity ^0.8.0;
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_5_8 {
    uint internal value;
    function get() public view returns (uint){
        if(value > 1000)
            return value;
        else
            return 0;
    }
    function set(uint _value) public {
        value = _value;
    }
}
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_6_7_8 {
    uint internal value;
    function get() public view returns (uint){
        if(value > 999)
            return value;
        else
            return value;
    }
    function set(uint _value) public {
        return value = value - _value;
    }
}
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_7_9_9 {
    uint internal value;
    string internal message;
    function get() public view returns (uint, string memory){
        value = 10;
        message = "testing string";
        return (value, message);
    }
    function set(uint _value, string memory _message) public {
        value = _value;
        message = _message;
    }
}
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient {
    function get() public returns (uint){ return 1; }
    function getMutated() pure public returns (uint) {
        Value storage value = Value(42);
        uint _value = value.get();
        return _value;
    }
}
