pragma solidity ^0.8.0;
import "./Equivalent.sol";
import "../../../accessControl/ReentrancyGuard.sol";
contract Mutate {
    using Mutate for Mutate.Person;
    using Mutate for Mutate.Person[];
    using Mutate for Mutate.uint256;
    using Mutate for Mutate.uint256[];
    using Mutate for Mutate.uint32[6][2];
    ReentrancyGuard _guard;
    constructor() { _guard = new ReentrancyGuard(); }
    modifier blockReentrant() {
        _guard.enterBlockInner();
        _;
        _guard.leaveBlockInner();
    }
    function getPersonCountEquivalent(uint256[6] calldata num) external view returns (uint256) {
        return Equivalent(msg.sender).getPersonCount();
    }
    function getAmountEquivalent(uint256[6] calldata num) public {
        Equivalent(msg.sender).setAmount(num[0] * num[1] * num[2] * num[3] * num[4] * num[5] + num[6] * num[7] * num[8] + num[9] * num[10] * num[11] + num[12] * num[13] * num[14] + num[15] * num[16] * num[17]);
    }
    function addPersonEquivalent(uint256[6] calldata num) public nonReentrant {
        Equivalent(msg.sender).newPerson();
        Equivalent(msg.sender).setAmount(num[0] * num[1] * num[2] * num[3] * num[4] * num[5] + num[6] * num[7] * num[8] + num[9] * num[10] * num[11] + num[12] * num[13] * num[14] + num[1
