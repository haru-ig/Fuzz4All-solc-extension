pragma solidity ^0.8.0;
contract Array {

    struct MyArr {
        uint256[100] elements;
        uint256 element_length;
        function add_element(MyArr storage memory _arr,uint256 _value) public {
            if (value(_arr.element_length)<100) {
                _arr.element[value(_arr.element_length)]=uint256(_value);
                _arr.element_length++;
                return;
            } else {
                revert("Error");
            }
        }
    }
    function read_value(MyArr storage memory _arr) public view returns(uint256) {
        return  uint256(_arr.elements[0]);
    }
}
