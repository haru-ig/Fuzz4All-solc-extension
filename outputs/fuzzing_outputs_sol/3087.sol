pragma solidity ^0.8.0;
contract Example11 {
    uint128 private num;
    function set(uint128 _value) public {
        num = _value;
    }
    function get()view public returns(uint128) {
        return num;
    }
}
contract Example11 is Example11 {
    uint128 public value;
    function myAdd(uint128 _a, uint128 _b) public returns(uint128)
    {
        return set(num + _a + _b);
    }
}
contract Example11 is Example11 {
    address public testAddress;
    function setAddress(address _address) public returns(uint128)
    {
        testAddress = _address;
        return set(0);
    }
}
contract Example11 is Example11 {
    address public testAddress;
    function getAddress() public returns(address)
    {
        return testAddress;
    }
}
contract Example11 is Example11 {
    address public testAddress;
    bool private flag;
    function isAddressSet() public returns(bool)
    {
        return flag;
    }
}
contract Example11 is Example11 {
    address public testAddress;
    uint128 public value;
    function callMeBack(uint128 _value) public returns(uint128)
    {
        return set(_value);
    }
}
contract Example11 is Example11 {
    address public testAddress;
    uint128 public value;
    uint128 private _sum;
    function add(uint128 _a, uint128 _b) public returns(uint128)
    {
        value = set(_a + _b);
        _sum = _sum.add(_b);
        return value;
    }
    function get() public view returns(uint128) {
        return _sum;
    }
}
pragma solidity ^0.8.0;
contract Example11 is Example11 {
    mapping(address => uint128) private balances;
    constructor() {

    }
}
