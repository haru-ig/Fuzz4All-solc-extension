pragma solidity ^0.8.0;
contract ConstantAccessBlock04 {
    mapping (address => uint256) mappingA;
    function setVar1(address _address) public {
        mappingA[_address] = 0;
    }
    function test() public view returns(address) {
        uint256 _var1 = mappingA[msg.sender];
        require(_var1 == 0);
        setVar1(msg.sender);
        uint256 _var2 = mappingA[msg.sender];
        require(_var2 == 1);
        return msg.sender;
    }
}
