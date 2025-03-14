pragma solidity ^0.8.0;
contract Mutate {
    uint private _value;
    uint private _value2;

    function mutate() public {
        if (msg.sender == _msgSender()) {
            _value += 1;
            if (_value2 < 200) {
                _value += 1;
                _value2 = 100;
            }
            _value2 += 1;
        }
    }


    function getValue() public view returns (uint) {
        return _value;
    }


    function setValue(uint _value) public {
        _value = _value;
        _value2 = 10;
        _value--;
    }


    constructor() public {
        setValue(10);
    }


    modifier gens(uint x) {
        { _value2; if(!_value2){ if(!(x > 0)) { revert("The provided gas exceeded"); }} }
        _;
    }
}
