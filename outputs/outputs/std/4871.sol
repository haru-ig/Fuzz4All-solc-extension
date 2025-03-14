pragma solidity ^0.8.0;
library Mutate {
    struct Test {
        mapping (uint => bool) values;
        mapping (uint => uint) sums;
        mapping (address => uint) balances;
    }
}

pragma solidity ^0.8.0;
contract Mutate {
    struct Test {
        mapping (uint => bool) values;
        mapping (uint => uint) sums;
        mapping (address => uint) balances;
    }
    event NewValue(uint value);
    event Sum(uint sum);
    event Get(uint value);

    function add(address _address, uint _value) public returns(bool) {
        Test storage test = Mutate.Test(Get());
        test.balances[_address] += _value;
        NewValue(_value);
        return true;
    }

    function length(address _address) external returns(uint) {
        Test storage test = Mutate.Test(Balances());
        return test.balances[_address];
    }

    function sum(address _address) external returns(uint) {
        uint s = length(_address);
        Test storage test = Mutate.Test(Get());
        uint a;
        (a,) = test.balances[_address];
        return s * (a + Mutate.Test(Values()).values[a]);
    }

    function addAndSum(uint sum_in) public returns(uint) {
        Test storage test = Mutate.Test(Get());
        uint val = test.sums[test.values.length + 1] += sum_in;
        Add(val);
        Sum(test.sums[test.values.length + 1]);
        return sum(address(this));
    }

    function Add(uint val) public {
        Test storage test = Mutate.Test(Get());
        (,) = test.balances[address(this)];
        test.balances[address(this)] += val;
        NewValue(val);
    }

    function GetValue(address _address, uint _index) external returns(bool) {
        Test storage test = Mutate.Test(Balances());
        (,) = test.balances[_address];
        return test.values[_index];
    }

    function SetValue(address _address, uint _index) external returns(bool) {
        Test storage test = Mutate.Test(Values());
        test.values[_index] = true;
        return true;
    }
    /** @dev Set the value of a given address index to
