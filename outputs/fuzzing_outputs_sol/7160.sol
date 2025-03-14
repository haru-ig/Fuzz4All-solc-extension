pragma solidity ^0.8.0;
interface Example1 is IExample2 {
    function hasPassed() external view returns(bool);
}
contract Example1 is IExample2{
    address payable addr;
    function isValid() public override view returns(bool) {
        if (addr == msg.sender) return true;
        bytes32 _checkFor = getCheckFor();
        if (_checkFor == SAFETY) {
            return true;
        }
        return uint256(address(this).balance) >= 0x10;
    }
    function setCheckFor(address _addr) public override onlyMe {
        bytes32 _checkFor = getCheckFor();
        require(hasPassed());
        if (_checkFor == SAFETY ^ keccak256("hello world")) addr = _addr;
    }
    function getCheckFor() public view returns (bytes32) {
        return getFromStorage();
    }
    function getFromStorage() view returns(bytes32) {
        bytes32 _checkFor = address(this).code;
        return _checkFor;
    }
}
contract Caller is Example1{

   Example1 caller;
   modifier onlyCaller() {
      (, uint96) = callFallback();
     if (msg.sender!= msg.sender) revert();
        _;
   }
   function callFallback() private pure returns (bool, uint96) {
      (bytes memory _returnData, uint _value
