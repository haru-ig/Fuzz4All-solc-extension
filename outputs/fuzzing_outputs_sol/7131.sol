pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(address c) external;
    function isValid() external view returns (bool);
    function __get_check_for() external view returns (bytes1);
    function hasPassed() external view returns (bool);
}
contract Example is IExample{
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    bytes1 constant __CHECK_FOR_ADDRESS = 0;
    function setCheckFor(address c) public onlyMe{
        require(hasPassed());
        bytes32 c2 = bytes32(address(this));
        if(msg.sender == c){
            checkFor[address(this)] = SAFETY;
        }
        else if (msg.sender == c2){
            checkFor[address(this)] = SAFETY;
        }
        else{
            require(__CHECK_FOR_ADDRESS == c);
            checkFor[msg.sender] = SAFETY;
        }
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
}
