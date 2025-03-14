pragma solidity ^0.8.0;
contract B {
    uint8 private _number;
    mapping(uint256 => uint256) private _numberMap;
    constructor() {
      _incrementNumberB();
    }
    function increment1() public {
        uint256 current_num = 1;
        _incrementNumberMapB(current_num);
        uint256 expected = _numberMap[current_num];
        assert(expected == 2);
    }
    function increment2() public {
        uint256 current_num = 2;
        _incrementNumberMapB(current_num);

        uint256 expected = _numberMap[current_num];
    }
    function decrement1() public {
        _decrementNumberMapB(1);
        uint256 current_num = 1;
        uint256 expected = _numberMap[current_num];
        assert(expected == 1);
    }
    function decrement2() public {
        uint256 current_num = 2;
        _incrementNumberMapB(current_num);
        _decrementNumberMapB(2);
        uint256 expected = _numberMap[current_num];
    }
    function _incrementNumberMapB(uint256 number) private {
        _numberMap[_number] = _numberMap[_number] + number;
    }
    function _decrementNumberMapB(uint256 number) private {
        uint256 current_num = _number;
        _numberMap[current_num] = _numberMap[current_num] - number;
    }
}
