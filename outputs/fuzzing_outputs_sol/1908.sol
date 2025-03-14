pragma solidity ^0.8.0;
contract Burning {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {}
    fallback () public {
        _balance--;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
contract Caller {
    function test() public {
        Burning burn = new Burning();
        BurningWithFallback burnerWithFallback = new BurningWithFallback();
        burn.transfer(burnerWithFallback);
        require(burnerWithFallback.balance == _value);

        burnWithFallback();
        require(burnerWithFallback.balance == _value);

        burn.transfer(burnerWithFallback);
        require(burnerWithFallback.balance == _value);

        burn.transfer(burnerWithFallback);
        require(burnerWithFallback.balance == _value);
    }
    function burnWithFallback() public {
        Burning burn = new Burning();
        BurningWithFallback burnerWithFallback = new BurningWithFallback();
        burn.transfer(burnerWithFallback);
        burnerWithFallback.fallback();
    }
}
