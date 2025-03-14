pragma solidity ^0.8.0;
contract MutatedComp17{
    uint256 private _a;
    constructor(uint32 _b) {
        _a = _b;
    }
    function increase() public {
        _a += 10;
    }
    function double() public {
        _a *= 2;
    }
}
pragma solidity 0.7.6;

library Utils{
    function isZero(uint256 x) private pure returns (bool) {
        return x == 0;
    }
}
contract MutatedComp17{
    uint256 private _a;
    Constructor(uint32 _b) {
        _a = _b;
    }
    function increase() public {
        _a += 10;
        _a = _a + 10;
    }
    function double() public {
        _a *= 2;
        _a = _a * 2;
    }
}
pragma solidity ^0.8.0;
contract MutatedComp{
    uint256 public x;
    uint256 public y;
    function inc(uint32 k){
        x += k;
    }
    function init(uint32 _k1, uint32 _k2){
        x = _k1 + _k2;
        y = _k1 - _k2;
    }
}
pragma solidity ^0.8.0;
contract MutatedComp24{
    uint256 public x;
    constructor(uint32 _number, uint32 anotherNumber){
        x = _number + anotherNumber;
    }
}
pragma solidity ^0.8.0;
contract MutatedComp{
    uint256 public x;
    constructor(uint32 _x) public {
        x = _x;
    }
    function init(uint32 _x) public {
        x = _x;
    }
}
