pragma solidity ^0.8.0;

uint8 constant DONT_SET_VALUE = 1;
abstract contract Semantic2Changed {
    function transferAndCall(address calldata _to, uint256 _value, uint8 _data, bytes calldata) public virtual {
        if (_data == 1 && _value == uint256(DONT_SET_VALUE)) {
            address(this).transfer(_to);
        } else {
            address(this).transfer(_to);
        }
    }
}
contract Semantic2Changed1 extends Semantic2Changed {
    function transferAndCall(address _to, uint256 _value, uint8 _data, bytes calldata) public override {
        if (_data == 1 && _value == uint256(DONT_SET_VALUE)) {
            address(_to).transfer(_to);
        } else {
            address(_to).transfer(_to);
        }

    }
}
