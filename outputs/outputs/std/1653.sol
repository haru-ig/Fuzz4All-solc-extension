pragma solidity ^0.8.0;
interface IConvert {
    function str2uint(string memory _str) external returns (uint);
}

pragma solidity ^0.8.0;
contract MyContract {
    string public max;

    function Max(uint _value) public {
        if (_value > max)
            max = _value.toString();
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    uint constant DIV5_BASE = 3;
    uint constant DIV4_BASE = 9;
    uint constant DIV3_BASE = 15;
    uint constant DIV5_START = 1;
    uint constant DIV4_START = 3;
    uint constant DIV3_START = 9;

    uint constant ONE_BASE = 100000;
    uint constant THREE_BASE = 300000;
    uint constant FIVE_BASE = 500000;
    uint constant TEEN_BASE = 100000;
    uint constant MAX_DIV_PER_BASE = 1000;
    uint constant DEG_2 = 180;
    uint constant DEG_180 = 10000;
    uint constant RAD_2 = 1;
    uint constant RAD_180 = Math.PI / 2;
    uint constant MIN_NUMBER = 100;

    function Divider(
        uint _divNum,
        uint _divDivBase,
        uint _divDivStart,
        uint _divOneBase,
        uint _divThroBase,
        uint _divThroStart,
        uint _divMax,
        uint _divNumMod
    )
        public
        pure
    {
        uint _result = _divNum / _divDivBase;

        _result += _divDivStart;
        if (_divNumMod > _divDivBase) {
            if (divisibleBy(mod(_divNumMod, _divThroBase), _divThroStart)) {
                _result = 0;
            }
        }
        if (_result > _divMax)
            _result = _divMax;
        else if (_result < min())
            _result = min();

        MyContract.Max(uint(_result));
    }

    function divisibleBy(
        uint _remainder,
        uint _number
    )
        internal
        pure
        returns (bool)
    {
        return ((((_remainder % _number) + _number) % _number) == _number);
    }

    function min() public pure returns (uint) {
        return MIN_NUMBER;
    }
}
