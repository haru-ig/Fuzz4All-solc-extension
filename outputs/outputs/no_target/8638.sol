pragma solidity ^0.8.0;
contract UntouchedMutable {
    constructor (uint256 _x_) public{
        require(_x_ > 0);
        x_ = _x_;
    }
    uint256 protected x_;
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (y_ + x_ / (10 ** y_ % 10 ** x_ % 10));
    }
    modifier onlyMod() {
        address current = msg.sender;
        uint256 bal = 0;
        for (uint256 i; i < 2; i++) {
            bal = balances[current];
            if (bal > 0) {
                break;
            }
            current = msg.sender;
        }
        if (bal == 0) {
            require(current!= address(0), "AddressZero");
        }
        require(bal % 10 ** x_ == 0, "NonInteger");
        require(balance[current] % 10 ** x_!= 0, "NonInteger");
        x_ = (x_ == 7)? 1 : x_;
    }
    uint256 public balances;
}
pragma solidity ^0.8.0;
contract MutatedAndUntouchedMutable {
    function mod(uint256 x_, uint256 y_) public pure returns (uint256) {
        return (x_ > 0? y_ + x_ / (10 ** y_ % 10 ** x_ % 10) : 0);
    }
    constructor (uint256 _x_) public{
        uint256 xLocal = _x_;
        _x_ = x_ == 7? 1 : x_;
        balances[msg.sender] = balances[msg.sender];
