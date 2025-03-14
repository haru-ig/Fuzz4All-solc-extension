pragma solidity ^0.8.0;
contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_1_1_4{
    uint internal value;
    function set(uint _value) public payable {
        value = _value;
    }
    function get() public returns (uint){
        return value;
    }
}
contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_2_7_0 {
    uint internal value;
    function set(uint _value, bool _noPayable) public {
        value = _value;
    }
    function get() public view returns (uint){
        return value;
    }
}
contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_3_7_2 {
    uint internal value;
    function set(uint _value) public returns (uint){
        return value;
    }
    function get() public returns (uint){
        return value + 1;
    }
}
          contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_4_7_2_6 {
    uint internal value;
    function set(uint _value) public payable returns (uint){
        return value;
    }
    function get() public returns (uint){
        return value + 500;
    }
}
