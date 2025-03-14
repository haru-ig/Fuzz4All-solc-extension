pragma solidity ^0.8.0;
contract Modified {
    function method1(uint128 _number) public virtual override returns (uint128) {
        if (this.function(123)) {
            return 0;
        }
        return _number * 2;
    }
    function method2(uint256 _number) public override pure virtual returns (uint256) {
        if (this.function(123)) {
            return 0;
        }
        return _number * 2;
    }
    function function(uint x) internal pure {
        require(x >= 0);
    }
}
contract User {

    uint256 x;
    event Event(uint256 x);
    modifier notZero() {
        require(x > 0);
        _;
    }
    constructor() {
        x = 123;
    }
    function callMethod() public returns(uint256) {
        x = 888;
        return x;
    }
    function functionFallback() public payable  {
        require(this.function(123) >= 0);
        x = 889;
        emit Event(x);
    }
}
contract Caller {
    function main() public payable {
        User _instance;
        uint256 _expected = 889;
        _instance = new User();
        uint256 x = _instance.callMethod();
        assert(_instance.function(123) == 0);
        assert(x == _expected);
    }
}
