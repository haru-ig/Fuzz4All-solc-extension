pragma solidity ^0.8.0;
contract Contract19{
    function getCallNum() public pure returns (uint x){
      callNum += 1;
      return callNum;
    }
    uint public callNum = 0;
}

pragma solidity ^0.8.0;
contract Fallback {
    receive() external { }
}
contract Contract{
    event Fulfilled(address owner, uint256 indexed value);
    uint256 public num;
    function getNumber() public pure returns (uint) {
        return num;
    }
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getCallNum() public pure returns (uint x){
      callNum += 1;
      return callNum;
    }
    uint public callNum = 0;
}
