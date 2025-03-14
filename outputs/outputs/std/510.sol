pragma solidity ^0.8.0;
contract test {
    uint256[] public testArr;
    uint256 testNum;
    uint public publicNum;
    address private account;
    modifier privateCheck(address _account) {
        require(
            _account == account,
            "Address not in the correct format. Should be the the address of a trusted contract"
        );
        _;
    }
    constructor () {
        testArr[0] = 1;
    }
    function sum() public returns (uint256){
        return testNum + publicNum;
    }
    function add(uint a, uint b) public privateCheck(msg.sender) pure returns (uint) {
        return a + b;
    }
    function mul(uint a, uint b) public privateCheck(msg.sender) pure returns (uint) {
        return a * b;
    }
    function assign(uint _a, uint _b) public privateCheck(msg.sender) {
        testNum = _b;
    }
    function isBigger(uint _a, uint _b) public privateCheck(msg.sender) view returns (bool) {
        return _a > _b && _a < _b + _b;
    }
    function toBig(uint _a) public privateCheck(msg.sender) returns (uint) {
        return _a + 3;
    }
}
