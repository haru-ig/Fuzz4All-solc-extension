pragma solidity ^0.8.0;
contract RevertNotChanged {
    uint256 value;
    modifier notChanged() {
        if(value!=3 ||!modified) {
            revert("Not exactly 3");
        }
        _;
    }
    function noChange(uint256 _value) public returns (uint256) {
        value = _value;
        return 5;
    }
    function change(uint256 _value) public notChanged returns (uint256) {
        return 11*_value;
    }
}
contract RevertMod {
    uint x;
    bool _modified = false;
    modifier modify(uint256 _value) {
        if(_value!=3 ||!_modified) {
            revert("Not exactly 3");
        }
        _modified = false;
        return 3*_value;
    }
}
contract RevertNoChangedMod {
    uint x;
    modifier notChangedMod(uint256 _value) {
        if(x!=_value ||!modified) {
            revert("Not exactly 3");
        }
        _modified = false;
        return 4*_value + (_value > 0? _value : -_value);
    }
}
contract RevertWithRevertChange {
    uint256 x;
    uint256 y;
    bool modified = false;
    bool _modified = false;
    modifier withRevertChange(uint256 _value) {
        if(x!=y || _value!=5 ||!modified ||!_modified ||!_modified) {
            revert("Not correct");
        }
        modified = false;
        _modified = false;
        return 6*_value*2;
    }
}
contract RevertWithNotChanged {
    uint256 x;
    uint256 y;
    modifier notChangedNoRevert(uint256 _x, uint256 _y) {
        if(x!=_y || y!=_y || _y!=_y ||!modified) {
            revert("Not exactly 3");
        }
        modified = false;
        return 3*_x + _y;
    }
    modifier withNotChanged(
