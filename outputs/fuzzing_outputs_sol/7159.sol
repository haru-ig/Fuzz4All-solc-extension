pragma solidity ^0.8.0;
interface IExample4 {
    function setCheck(address c) external;
    function isValid() external view returns(bool);
    function getCheck() external view returns(address);
}
contract Example4 is IExample4{
    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => address) public check;
    bytes32 public checkBefore;
    bytes32 constant CHECK_BEFORE_OFFSET = keccak256("checkBefore");
    function setCheck(address c) public onlyMe{
        address _check = getCheck();
        require(hasPassed());
        bytes32 _pre = check[msg.sender];
        check[c] = (_check == SAFETY)? SAFETY : SAFETY ^ keccak256("hello world");
    }
    function isValid() public view returns(bool) {
        return check[msg.sender] == SAFETY || (address(this).balance - checkBefore) > CHECK_BEFORE_OFFSET;
    }
    function hasPassed() public view returns (bool) {
        address _check = getCheck();
        address _checkBefore = checkBefore;
        if (_check == SAFETY) {
            return true;
        }
        return address(this).balance >= (checkBefore - CHECK_BEFORE_OFFSET) - 0x10;
    }
    function get
