pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    uint256[] private _a;
    uint256 private _b;
    uint256 public x = 1;
    uint256 private _y;
    function mutate() public {
        _a.push(_b);
        _y *= x;
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays3 {
    uint256[] private _a;
    uint256 public x = 1;
    uint256 private _y = 1;
    uint256 private _z;
    function mutate() public {
        assembly { assembly {
            _z := mload(0x40)
            mstore(add(x, 4), add(_z, _y))
            mstore(add(x, 36), _z)
        } }
    }
}
