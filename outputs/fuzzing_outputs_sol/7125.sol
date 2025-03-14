pragma solidity ^0.8.0;
contract Example is IExample{
    address payable addr;
    modifier onlyMe(){if (msg.sender == addr) _; }
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c, bytes32 b) public onlyMe {
        require(hasPassed(b));

        uint256 balancebefore = address(this).balance;
        checkFor[c] = b;

        if(msg.value!= 0) balancebefore = addr.balance;
        balancebefore -= min1(balancebefore, address(this).balance);
        if(balancebefore < 0) return false;
        return checkFor[msg.sender] == SAFETY;
    }
    function isValid() public view returns(bool) {
        if(address(this).balance == 0) {
            return false;
        }
        uint256 balancebefore = uint256(address(this).balance) - msg.value;
        return checkFor[msg.sender] == SAFETY && checkFor[address(this).balance] == SAFETY;
    }
    function hasPassed(bytes32 b) public view returns (bool) {
        return b == SAFETY || b == SAFETY;
    }

    function min1(uint256 v1, uint256 v2) public pure returns (uint256) {
        if (v1 < v2) return v2;
        else return v1;
    }
}

contract FallbackExampleContract {
    IExample example = IExample(0x1234);

    bytes32 public safeParam = "safety";
    bytes32 constant public safetyCheck = "Hello there!";

    fallback() external pay
