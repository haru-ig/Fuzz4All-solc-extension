pragma solidity ^0.8.0;
contract Caller {
    function _some_contract() external pure returns (address) {
        throw "oh no!";
    }
    function _another_contract() public payable {
        throw "oh no!";
    }
    function _third_contract() public payable {
        throw "oh no!";
    }
    function _fourth_contract() public payable {
        throw "oh no!";
    }
    function _fifth_contract() public payable {
        throw "oh no!";
    }
    function allCalls() public payable {
        _some_contract().function_to_call();
        _another_contract();
        _third_contract();
        if (block.timestamp >= 1601253200) {
            _fourth_contract();
        }
        _fifth_contract();
    }
}
