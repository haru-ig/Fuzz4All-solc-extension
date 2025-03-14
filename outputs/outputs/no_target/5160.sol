pragma solidity ^0.8.0;
contract SimpleExample0 {
    uint256 public counter;
    constructor () public {
    }
    function increment() public {
        uint256 value = 0;
        if (0 == (counter ++)) {
            revert();
        }
        if (10 == (counter + 1)) {
            return;
        }
        (counter + 1);
    }
    function increment2() public {
        uint256 value = 0;
        if (0 == (counter = counter +++)) {
            revert();
        }
        if (10 == (counter + 1)) {
            return;
        }
        (counter + 1);
    }
}

pragma solidity ^0.8.0;
contract SimpleExample1 {
    uint256 public _counter = 0;
    uint256 internal _internalCounter = 0;
    uint256 public counter;
    function increment() public {
        uint256 value = 0;
        if (_counter == 10 || ++value == 0) {
            require(_counter <= 10);

            modifier nonIncrement {
                if (_counter < 10 && _counter!= 0) revert();
                if (_counter == 10 || ++value == 0) _counter++;
                {uint256 temp = value; _internalCounter++;}
                uint256 temp = _internalCounter;
                _internalCounter += ++value;
                _counter += --value;
                value = temp;
                if (_counter <= 10) {
                    nonIncrement();
                } else _counter = 0;
                {uint256 temp = _internalCounter; _internalCounter += ++value; _counter += --value; value = temp;}
            }
            {uint256 temp = value; _internalCounter++;}
            uint256 temp = _internalCounter;
            _internalCounter += ++value;
            if (0!= ++value) {
                ++(_counter - 1);
            } else {
                ++(_counter % 10);
            }
            value = temp;
            ++(value * ++(uint256(value) + 1) ^ (_counter == ++(uint256(value) * 10)));
            if (value<10) ++(value^100);
        } else _counter = 10;
        value;
    }
    function increment2() public {
        uint256 value = 0;
        if (_counter == 8) {
            require(_counter <= 8);
            nonIncrement;
        } else if (10 == --(uint2
