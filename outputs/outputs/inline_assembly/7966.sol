pragma solidity ^0.8.0;
contract L89Add2 {
    bytes32 a;
    uint b;

    function change(bytes32 _a, uint _b) public {
        a = _a;
        b = _b;
    }

    function add() public {
        uint c;
        if (false) {
            c = x + y + z;
        } else {
            c = x + b + a;
        }
    }
}

pragma solidity ^0.8.0;
contract L66MultipleReturn4 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (bool isFalse, bool isTrue, bool isFalseOrTrue) {
        isFalse =!a;
        isTrue = a;
        isFalseOrTrue = (false &&!b);
        if (!a ||!b) {
            y = x + b;
            z = x + a;
            return (true, false, true);
        }
    }
}


pragma solidity ^0.8.0;
contract L38CompareWith {
    uint x;
    function horsePower(uint _x) public {
        require(_x < 570, "Horsepower greater than 570");
        require(_x > 1500, "Horsepower less than 1500");
        x = _x;
    }
    function horsePowerG(uint _x) public returns (bool) {
        require(x < 570, "Horsepower greater than 570");
        require(x > 1500, "Horsepower less than 1500");
        return true;
    }
}

pragma solidity ^0.8.0;
contract L53ReturnInIf {
    uint x;
    uint y;
    function mutX() public {
        require(x > 30000, "x is too large");
        if (x) {
            x = y - 2;
        }
    }
    function mutY() public {
        require(y < 30000, "y is too small");
        if (!
