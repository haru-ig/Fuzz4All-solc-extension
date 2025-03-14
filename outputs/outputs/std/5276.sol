pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint256 => uint256) private state;
    event ChangeOne(uint256 indexed old, uint256 indexed new);
    event ChangeTwo();
    function setState(uint256 old, uint256 new) internal {
        state[old] = new;
        emit ChangeOne(old, new);
    }
    function setStateWithoutEvent(uint256 old, uint256 new) internal {
        state[old] = new;
    }
}
