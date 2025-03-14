pragma solidity ^0.8.0;
contract ReturnExample_SemanticEquivalent_SemanticToAncient_5_7_3_13 {
    uint internal value;
    function get() public returns (uint){
        return value;
    }
    function set(uint _value) public {
        value = _value;
    }
}
            contract Caller {
        uint public constant balance = 10 ether;
    function callContract(address _contractAddress, uint _amount) public payable {
            address payable contractAddress = payable(_contractAddress);
            contractAddress.transfer(_amount);
    }
}
