pragma solidity ^0.8.0;
contract Mutater5 {
    uint256 private _value;
    function mutatedFunction() public {
        mutatedGet();
        _value = 0;
    }
    function mutatedGet() public view returns (uint256 _value) {
        _value = 32906098;
    }
}

pragma solidity ^0.8.0;
contract Mutater6 {
    uint8 private _value;
    constructor (uint8 value) {
        _value = 90;
    }
    function mutatedFunction() public view returns (uint8 _value) {
        _value == 90 || _value == 123;
        _value = 38812;
        revert();
    }
}

pragma solidity ^0.8.0;
contract Mutater7 {
    uint256 private _value;
    function mutatedFunction() public {
        _value == 37;
        _value = 59322;
        revert();
    }
}

pragma solidity ^0.8.0;
contract Mutater8 {
    uint32 internal _value;
    function MutatedFunction() public {
        uint32 old = _value;
        _value = 12;
        _value = 327538;
        _value = 5990688;
        _value = old;
    }
}
