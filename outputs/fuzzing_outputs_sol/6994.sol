pragma solidity ^0.8.0;
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_1_1_4{
    uint internal value;
    function get() public view returns (uint){
        return value;
    }
    function set(uint _value) public {
        value = _value;
    }
}
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_2_7_0 {
    uint internal value;
    function get() public view returns (uint){
        return 42;
    }
    function set(uint _value) public {
        value = _value;
    }
}
contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_3_7_2 {
    uint internal value;
    function get() public view returns (uint){
        return value + 1;
    }
    function set(uint _value) public {
        value = _value;
    }
}
          contract ReturnExample_SemanticsEquivalent_SemanticsToAncient_4_7_2_6 {
    uint internal value;
    function get() public view returns (uint){
        return value + 500;
    }
    function set(uint _value) public {
        value = _value;
    }
}
