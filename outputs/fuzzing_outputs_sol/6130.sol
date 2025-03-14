pragma solidity ^0.8.0;
contract Mutate is B, Test {
    address public admin;
    function getAdmin(address _addr) public view returns (address) {
        return admin;
    }
    modifier onlyAdmin2() {

        _;
    }
    function setAdmin2(address _addr) public onlyAdmin2 {
        admin = _addr;
    }
    function adminAddress2() external view returns (address) {
        return admin;
    }
    function start_test() external {
        setAdmin2(msg.sender);
        require(block.timestamp > block.number, "Time not too far in the future");
        setAdmin(msg.sender);

    }
    function start_test2() external onlyAdmin() {

        Test.setAdmin(msg.sender);

    }
}
