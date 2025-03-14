pragma solidity ^0.8.0;
contract Foo {
    Counter public foo;
    uint public bar;

    constructor(address _foo) public{
        foo = Counter(_foo);
        bar = foo.current;

    }

    function log(uint _value) public returns (void){
        uint256 _index = _value.div(10);
        uint256 _divisor = 10**_index;
        uint256 _finalValue = foo.current/_divisor;

        assert(uint48(_finalValue)==uint48(_value));

        (bool _result)=(bar*10**_index == _value);

        assert(_result);
    }
}
