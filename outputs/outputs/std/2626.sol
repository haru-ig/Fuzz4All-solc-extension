pragma solidity ^0.8.0;
contract ContractX {
    uint256 public numberArray[10] = [10, 6, 172921, 0, 5, 0, 3, 0, 9, 0];

    bool private _value;

    modifier notZero {
        uint256 value = _value;
        if (value == 0)
            revert("Math: add, sub, or mul by 0");
        _;
    }

    function contractXfunc() public payable {
        _value = 20;
        numberArray[9] += 1;
    }

    function contractXfunc2() public payable notZero {
        _value = numberArray[10];
    }

    function contractXfunc3() public payable notZero {
        uint256 result = numberArray[9] + 1;
    }
}
