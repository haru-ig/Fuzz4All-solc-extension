pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
function _fallback(address _receiver, uint256 _amount) private pure {

    require(_amount >= 1 ether, "");
    _receiver.transfer(_amount);
}
contract Mutator {
    mapping(address => uint256) public amounts;
    fallback() external payable {
        amounts[msg.sender] += msg.value;
    }
}
