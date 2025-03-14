pragma solidity ^0.8.0;
contract ReturnsExample_SemanticsInconsistency_Modifies_Ancient_2_7_0 {
    uint internal value;
    uint result = 0;
    function set(uint _value) public payable {
        value = _value;
        result += _value;
    }
    function get() public view returns (uint){
        return result;
    }
}
contract ReturnsExample_SemanticsInconsistency_Modifies_Ancient_3_7_5 {
    uint internal value;
    uint result = 0;
    function set(uint _value) public {
        uint val1 = 10;
        uint val2 = 22;
        uint val3 = 5;

        value = _value;
        result = (val1+val2+val3);
    }
    function get() public view returns (uint){
        return result;
    }
}
contract ReturnsExample_SemanticsInconsistency_Modifies_Ancient_4_7_5_7 {
    uint internal value;
    uint result = 0;
    function set(uint _value) public {
        uint val1 = 10;
        uint val2 = 22;
        uint val3 = 7;

        value = 1;
        result = (val1+val2+val3);
    }
    function get() public view returns (uint){
        return result;
    }
}
