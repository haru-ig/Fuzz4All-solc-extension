pragma solidity ^0.8.0;
contract Mutate {
    address payable payable _contractValue;
    constructor() {
            payable(_contractValue);
    }
    function ChangeAmount(uint v1) public {
        _amounts=v1+1;
    }
}
contract Mutate2{
    uint public _amounts;
    uint internal _amounts_internal;
    uint internal _amounts2;
    uint internal _amounts2_internal;
    constructor() {
            _amounts=5;
            _amounts_internal=5;
            _amounts2=5;
    }
    function GetAmount() public view returns (uint) {
            return _amounts;
    }
    function GetAmount_internal() public view returns (uint) {
        return _amounts2_internal;
    }
    function ChangeAmount(uint v1) public returns (uint) {
        _amounts=v1;
        _amounts2=2*v1;
        return v1;
    }
    function ChangeAmount_internal(uint v1) public returns (uint) {
        _amounts2_internal=v1;
        return v1;
    }
}
contract Mutate3{
    uint public _amounts;
    uint internal _amounts;
    uint256 internal _amounts2;
    uint256 internal _amounts2_internal;
    uint8 internal _amounts3;
    uint8 internal _amounts3_internal;
    constructor() {
        _amounts=5;
        _amounts_internal=5;
        _amounts2=5;
        _amounts2_internal=5;
        _amounts3=5;
        _amounts3_internal=5;
    }
    function GetAmount() public view returns (uint256) {
            return _amounts;
    }
    function GetAmount_internal() public view returns (uint256) {
            return _amounts2_internal;
    }
    function GetAmount_internal2() public view returns (
