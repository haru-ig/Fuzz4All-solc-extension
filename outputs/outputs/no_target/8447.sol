pragma solidity ^0.8.0;
contract Unsafe6A {
    constructor (
        string memory _value,
        uint _
    ) public {
        if (0 >= _ && 0 <= _ && _ <= 100) {
            _value = _value;
        } else {
            _value = 0; } }
    function set(string memory _value) public {
        _value = _value; }
    }

pragma solidity ^0.8.0;
contract Unsafe6C {
    constructor (
        string memory _value,
        uint _
    ) public {
        if (0 >= _ && 0 <= _ && _ <= 5515) {
            _value = _value; }
        else {
            _ = 0; } }
    function settwo(address payable _value) public {
        _value = payable(_value); }
    }
contract Unsafe7A {
    constructor (
        string memory _value
    ) public {
        _value = _value; }
    function set(string memory _value) public {
        _value = _value; }
    function setzero(uint _value) public {
        _value = _value; }
    }
pragma solidity ^0.8.0;
 contract Unsafe8B {
    event A(); function set( bytes32 _hash1 ) public { A(); } }

pragma solidity ^0.8.0;
contract Unsafe8A {
    event A(); function setone( address _address ) public { A(); } }
contract Unsafe8C {
    event A(); function settwo( bytes32 _hash2 ) public { A(); } }
contract Unsafe7C {
    event A(); function setonezero( address _address, uint _value2 ) public { A(); } }
contract Unsafe7A {
    function setzero(uint _value) public pure { }
    function settwozero(address payable _address, uint256 _value2) public pure { }
    function setoff(bytes32 _hash2) public pure { }
    function seton(uint256 _value) public pure { }
 }
