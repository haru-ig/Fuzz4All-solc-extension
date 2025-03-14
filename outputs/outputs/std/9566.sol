pragma solidity ^0.8.0;
contract Mutate25x {

    uint public i25;
    uint public i31;
    uint256 public _a = 12345680417163159098754528397773449510883764;

    uint public _b;
    uint public _c;
    uint public _b4;

    function _modifyA (uint256 x, uint256 y) public returns(uint256) {
        _b = x + y;

        uint256 z = x * x;
        uint256 w = y * y;
        while(_b > 69283) {
            _b -= 783319;
        }

        if(_b == 69283) {
            return w;
        }
    }

    function _modifyB (uint256 x, uint256 y) public returns(uint256) {
        _b4 = x + y;


        uint256 z = y;
        while(_b4 > 69283) {
            _b4 -= 783319;
        }

        if(_b4 == 69283) {
            return z;
        }
    }
    uint256 public _sum_c;

    uint256 _a;

    constructor() public {
        _a = 12345680417163159098754528397773449510883764;
        signer_addr = msg.sender;
        signer_addr_original = signer_addr;
    }

    function() external payable {

        signer_addr = addr;
    }







    function returnVar1 (address signer_addr) external returns (uint) {
        return signer_addr;
    }

    function callValueWith(uint _value) payable public {
        signer_addr.transfer(_value);
    }

    function transferWith(uint _value) public {
        signer_addr.transfer(_value);
    }

    function transferFromWith(uint _value) public {
        signer_addr.transfer(_value);
    }

    function getArray (address in_addr1, uint in_var1, address in_addr2, uint in_var2) public returns (address[] memory) {
        return [
