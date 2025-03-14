pragma solidity ^0.8.0;
contract FallbackModifierB is FallbackModifierZ {
    uint256 a = 23;
    constructor(uint256 a_) { a = a_; }
    modifier ifValidB() {
        require(z <= a, "z must be <= a");
        _;
    }
    function accept(address, uint256) public ifValidB { a++; }
}

pragma solidity ^0.8.0;
contract FallbackModifierC {
    uint256 a;
    address payable payee;
    constructor(uint256 a_) {
        a = a_;
        payee = payable(msg.sender);
    }
    modifier ifValidC() {
        require(a >= 23, "a must be >= 23");
        _;
    }
    function accept(address, uint256) public ifValidC { payee.transfer(10e10); }
}
