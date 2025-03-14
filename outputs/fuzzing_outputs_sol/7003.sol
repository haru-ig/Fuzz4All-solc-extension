pragma solidity ^0.8.0;
contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_A_E_1_1_4{
    uint internal value;
    uint[5] memory memoryArray;
    function set(uint _value) public payable {
        value = _value;
        memoryArray[0] = _value;
        memoryArray[1] = _value;
        memoryArray[2] = _value;
    }
    function get() public returns (uint){
        return value;
    }
}
contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_B_E_2_7_0 {
    uint internal value;
    uint[5] memory memoryArray;
    function set(uint _value, bool _noPayable) public {
        value = _value;
        memoryArray[0] = _value;
        memoryArray[1] = _value;
        memoryArray[2] = _value;
    }
    function get() public view returns (uint){
        return value;
    }
}
contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_C_E_3_7_2 {
    uint internal value;
    uint[5] memory memoryArray;
    function set(uint _value) public returns (uint){
        return value + 1;
    }
    function get() public returns (uint){
        return value + 1;
    }
}
          contract ReturnExample_SemanticsInconsistency_SemanticsToAncient_D_E_4_7_4_6 {
    uint internal value;
    uint[5] memory memoryArray;
    function set(uint _value) public payable returns (uint){
        return value + 500;
    }
    function get() public returns (uint){
        return value + 500;
    }
}

pragma solidity ^0.8.0;
contract CallExample_SemanticsInconsistency_SemanticsToAncient
