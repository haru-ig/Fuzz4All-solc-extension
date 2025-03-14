pragma solidity ^0.8.0;
contract second{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        a *= -1;
        b /= 2;
        c *= b;
        d -= c;
        bool x;
        if (x)
            (bool) (0 < a || b % ~a < a);
        else
            while (true)
                break;
        e %= b;
    }
}

pragma solidity ^0.8.10;
contract first{
    function isEven(uint8 v) public pure returns (bool){
        if (v == 0) return true;
        else if (v == 1) return false;
        else return v & 1==0;
    }
    function f(uint a, uint b) public {
        if (!isEven(a)) {
            if (!isEven(b)) b /= 2;
            else a = 3 / 2;
        } else {
            b *= 2;
        }
        if (b > 0){
            b /= 2;
            if (!isEven(a)) b *= ~2;
        } else {
            uint256 c = (uint256) - c * -a;
        }
    }
}
pragma solidity ^0.8.5;
contract first {
    function f(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a < 0) a = (uint256) -c *~a;
        b /= 2;
        return (uint256) ((uint256) -c * -a + (uint256) -a * -b);
    }
}
pragma solidity ^0.8.0;
contract first {
    function f(uint32 a, uint8 b) public pure returns (uint32) {
        if (a < 0) {
            while (true) {
                break;
            }
        }
        b -= 0;
    }
}

pragma solidity ^0.8.0;
contract first {
    function f(uint a, uint b) public pure returns (uint) {
        if (a < 0) {
            a = (uint) -(a) * -b;
        }
        return (uint) (((uint) -(a) * -b + (uint) -(a) * -b) + (uint) (a) * -b);
    }
}
