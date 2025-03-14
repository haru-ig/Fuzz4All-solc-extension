pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray {


    mapping(address => uint256) private accountToValue;


    function getvalue() external view returns(uint256){
        return accountToValue[msg.sender];
    }


    function setvalue(address _address, uint256 _amount) external {

        require(accountToValue[msg.sender] == 0, "Array has already a member");


        accountToValue[msg.sender] = _amount;
    }


    function reset() external {

        address[5] memory addresses;

        addresses[0] = msg.sender;
        addresses[1] = msg.sender;
        addresses[2] = msg.sender;
        addresses[3] = msg.sender;
        addresses[4] = msg.sender;

        for(uint j = 0; j < 5; j++ ) {
            accountToValue[addresses[j]] = 0;
        }
    }


    function set(address _address, uint256 _amount) external {

        uint256 value = accountToValue[_address];


        accountToValue[_address] = _amount;
    }

    function incrementValue(uint256 _amount) external {
        uint256 value = accountToValue[msg.sender];
        value += _amount;
        accountToValue[msg.sender] = value;
    }

    function addValue(uint256 _amount) external {
        uint256 value = accountToValue[msg.sender];


        accountToValue[msg.sender] += _amount;
    }

    function resetMemberValue(address _address) external {
        accountToValue[_address] = 0;
    }

    function checkAllValue() external {
        for (address k in accountToValue.keys()) {
            uint2
