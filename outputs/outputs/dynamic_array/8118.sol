pragma solidity ^0.8.0;
interface ISpeed {
    function speed() external view returns (uint);
}
contract Speed is ISpeed {
    uint256 initialSpeed;
    mapping (address => uint) public speeds;

    constructor() {
        initialSpeed = 5;
    }

    function _speedChanged(uint256 _newSpeed) internal {
    }

    function speed() public view returns (uint) {
        return initialSpeed;
    }

    receive() external payable {
    }

    fallback() public payable {
    }

    function speedUpdated() public onlyMone() {
        speeds[msg.sender] = speed();
        emit speedChange(msg.sender, speed());
    }

    function onlyMone() public view returns (address) {
        if (msg.value < 1 ether) {
            revert("must pay 1 ether");
        }
        return msg.sender;
    }

    event speedChange(address addr, uint speed);

    function _setSpeed(uint _newSpeed) internal {
        if (speed()!= initialSpeed) {
            _speedChanged(_newSpeed);
        }
        initialSpeed = _newSpeed;
    }

    function setSpeed(uint _newSpeed) external onlyMone() {
        _setSpeed(_newSpeed);
    }
}
