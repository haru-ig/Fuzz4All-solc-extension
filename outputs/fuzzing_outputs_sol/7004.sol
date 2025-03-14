pragma solidity ^0.8.0;
contract MutatingExample_SemanticsInconsistency_SemanticsToAncient_5_22_0 {
    address payable beneficiary = payable(0x834877398726A4bAB305fE5eD3E080Bdc2d3cD0B);
    uint internal value;
    mapping (uint => uint) public mutatedValueMap;
    modifier onlyBeneficiary{
        require(msg.sender == beneficiary);
        _;
    }
    function set0(uint _valueOne, uint _valueTwo, bool _noPayable) public payable returns (uint){
        value = _valueOne;
        mutatedValueMap[0] = _valueTwo;
        require(!_noPayable);
        _;
    }
    function set(uint _valueOne,uint _valueTwo) public returns (uint){
        value = _valueOne;
        mutatedValueMap[0] = _valueTwo;
        return _valueOne + _valueTwo;
    }
    function get() public view returns (uint){
        return value;
    }
    function get0() public view returns (uint){
        return mutatedValueMap[0];
    }
}
