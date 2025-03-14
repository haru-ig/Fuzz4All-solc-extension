pragma solidity ^0.8.0;
contract Mutators {

    function simple (string memory a, uint8  b) view returns (string memory c) {

        if (b > 1) {
            emit b;
        }

        b = b + 1;
        require(b >= 1, "Too small");
        c = a + " " + b + " " + c(a);
    }

    function new (uint256 d, uint8 e) view returns (uint256) {
        require(d > e, "Error");
        b = d - e;
        b += 1;
        emit e;
        c = b;
    }
}

contract Mutators1 is Mutators {
    function simple (uint8 z, uint5 a) view returns (uint256 b) {
        uint256 val = 0;
        if (a > 0) {
            val += 1;
            val *= a;
        }

        if (z > a) {
            return val / z;

        } else  {
            return val + b / z;
        }
    }
}
