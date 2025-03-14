pragma solidity ^0.8.0;
contract Contract15 {
    struct Record{
        uint value;
        uint counter;
    }
    uint256 public counter;
    mapping(address => mapping(uint => Record)) public records;
    event Fulfilled(address indexed owner, uint indexed value);
    function calculate(uint d) public{
        if(records[msg.sender][counter]!= bytes32(address(this))){
            uint stored_val = records[msg.sender][counter].value;
            if(d < stored_val) {
                records[msg.sender][counter].value = records[msg.sender][counter].value + (d % stored_val);
                return;
            }
        }
        records[msg.sender][counter].value += d;
        records[msg.sender][counter].counter += 1;
    }
    receive() external payable {
        calculate(msg.value);
    }
    function getRecordValue(uint256 index) public view returns(uint256 value){
        return records[msg.sender][index].value;
    }
    function getRecordIndex(uint256 index) public view returns(uint256 counter){
        return records[msg.sender][index].counter;
    }
    function getRecordOwner(uint256 index) public view returns(address owner){
        return records[msg.sender][index].value;
    }
    function getRecordsCount() public view returns(uint256 counts){
        return counter;
    }
}
