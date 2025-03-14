pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(address c) external;
    function isValid() external view returns (bool);
    function hasPassed() external view returns (bool);
}
contract Example is IExample{
    address payable addr;
    uint256 flag;
    uint256 constant SAFETY = 1;
    uint256 constant FALLBACK = 2;
    mapping(address => uint256){
        address a : uint256;
    }
    constructor(){
        flag = SAFETY;
    }
    modifier in_safe() {if (flag == SAFETY) _; }
    modifier in_fallback() {if (flag == FALLBACK) _; }
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    function setCheckFor(address c) public onlyMe{
        addr = msg.sender;
        checkFor[c] = SAFETY;
    }
    function isValid() public view returns(bool) {
        return checkFor[msg.sender] == SAFETY;
    }
    function hasPassed() public view returns (bool) {
        if (uint256(address(this).balance) > 0x10000) {
            return true;
        }
        return false;
    }
}

pragma solidity ^0.8.0;
contract Caller1{
        function setCaller1(address payable c);
    function call_caller1_no_call() public payable returns(uint256);
}
contract Caller1
