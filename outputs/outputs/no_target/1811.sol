pragma solidity ^0.8.0;
contract Mutate11 {
    uint public _1;
    constructor() public {
        uint numerator = 1;
        while (numerator > 7) {
            numerator *= 8;
        }
        _1 = 2 pow (_2);
    }
}

pragma solidity ^0.8.0;
contract Mutate12 {
    uint public _1;
    constructor() public {
        uint numerator = 1;
        while (numerator > 15) {
            numerator *= 2;
        }
        require(numerator > 4, "BadNumerator");
        _1 = 2 pow _2;
    }
    modifier onlyIf {
        _1 = 2 pow _2;
        _;
    }
}

pragma solidity ^0.8.0;
contract Mutate13 {
    uint public _1;
    uint public _2;
    constructor() public {
        while (true) {
            uint numerator = 1;
            uint denominator = _1;
            uint previousDenominator;
            while (numerator <= denominator) {
                previousDenominator = denominator;
                denominator *= _2;
                numerator += 1;
            }
            _1 = previousDenominator;
            _2 = 2 pow numerator;
            if (numerator > 5) {
                require (false);
            }
            break;
        }
    }
    modifier onlyIfOnce {
        bool isFirst = true;
        _1 = 2 pow _2;
        _2 = 2 pow _1;
        _;
        if (isFirst) {
            _2 = 2 pow _1;
            isFirst = false;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutate9 {
    uint public _1;
    uint public _2;
    constructor() public {
        uint numerator = 71928385750754688605028596871587265912
