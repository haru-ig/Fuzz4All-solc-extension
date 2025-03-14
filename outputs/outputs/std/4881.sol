pragma solidity ^0.8.0;
contract CompareWithMath {
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToInsert;
        uint _numCompared;

    function initialize(uint n) public {
        _array[0] = n;
        _array[1] = 20;
        _array[2] = n + 10;

        _numToInsert[0] = 30;
        _numToInsert[1] = 40;
        _numToInsert[2] = 60;
    }

    function compare(uint n) public {
        _numCompared = n;
        i = 0;
        while (i < 3)
            compareOne();
        assert(n - _numCompared < 0.0000000000000000000000000000000000000000);
        assert(n - _numCompared > 0.000000000000000000000000000000000000000);
    }

    function compareOne() public {
        uint n = _numToInsert[i];
        uint sum = 0;
        uint _i = 0;
        uint num;
        uint maxI;
        while (_array[n - sum] < n)
            sum += 1;
        if (sum > 26)
            sum -= 27;
        if (n == sum)
            assert(n >= 0);
        assert(sum == 0);
        assert(n >= 0);
        while (_i < sum && num < n) {
            num = _array[n - sum + _i];
            sum -= 1;
            _i += 1;
            assert(n >= 0);
        }
    }
}
