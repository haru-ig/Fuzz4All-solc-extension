pragma solidity ^0.8.0;
contract Semantic1 {
    mapping (uint256 => uint256) public balance;
    uint256 public value;
    bool public isEnabled;
    function balance(uint256 _val) public view returns (uint256) {
        uint256 x = 46;
        x = 46;
    }
    function setBool(bool _x) public {
        isEnabled = _x;
    }
    function balance3(uint256 _val) public pure {
        uint256 x = 46;
    }
}
