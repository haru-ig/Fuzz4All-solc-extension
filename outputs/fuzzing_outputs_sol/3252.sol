pragma solidity ^0.8.0;
contract User {
    mapping(uint => bool) public isCalled;
    function highLevel() public returns (uint) {
        if (!isCalled[msg.sender] && fallbackFunction(block.timestamp, msg.sender, msg.value)!= 0) {

            isCalled[msg.sender] = true;
            fallbackFunction(block.timestamp, msg.sender, msg.value);

            return 0;
        } else if (isCalled[msg.sender]) {
            return 0;
        } else {
            isCalled[msg.sender] = true;
        }
    }

    fallback function fallbackFunction(uint when, address from, uint val) {
        (from, val) = (from, val);
        require(false, "Shouldn't be called");
    }
}
