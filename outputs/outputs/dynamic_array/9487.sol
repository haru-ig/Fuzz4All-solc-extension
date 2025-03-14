pragma solidity ^0.8.0;
contract Mutation {
    address public owner;
    mapping(address => uint) public blackboxes;
    mapping(address => uint) public blackboxesMutated;
    function createBlackboxes () public { blackboxes[msg.sender] = 1; }
    function updateBlackboxes (address blackbox) public returns (bool) {
        if (!blackboxes[blackbox] || (blackboxes[blackbox] > 2)) { return false; }
        blackboxes[blackbox] = 2;
        emit BlackboxCreated(blackbox);
        return false;
    }
}

pragma solidity ^0.8.0;
contract MutationReversion {
    uint private immutable uint64 = 0;
    address public owner;
    function createBlackboxesMutated() public { uint64++; }
    function updateBlackboxesMutated(address blackbox) public returns (bool) {
        if (!blackboxes[blackbox]) {
            blackboxes[blackbox] = uint64;
            emit BlackboxCreated(blackbox);
            return false;
        }
        blackboxesMutated[blackbox] = uint64;
        emit BlackboxCreated(blackbox);
        return false;
    }
}
