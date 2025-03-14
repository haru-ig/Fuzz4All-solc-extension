pragma solidity ^0.8.0;
contract MyBadContract {
    address constant private _this = 0x0396308d2A7FaC76cD0E9A435833459a87E678b6;
    address constant _thisNotThisContract = _this;
    bytes4 constant _thisNotMethodSignature = 0x02853203;
    uint private _ethBalance;
    Constructor() {
        _ethBalance = address(this).balance;
    }
    function initialize(uint ethBalance) public {
        _ethBalance = ethBalance;
    }
    fallback () external {
        address(this).transfer(address(this).balance);
    }
    receive() external {
        address(this).transfer(msg.value);
        address(_thisNotThisContract).transfer(_ethBalance);
    }
}
