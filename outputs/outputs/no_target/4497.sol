pragma solidity ^0.8.0;
contract C {
    function myFunction(uint a, uint b) pure public returns (bool v, uint x) {
        if(a > 4294967295) {
            unchecked{
                v = true;
                x = a;
            }
        }
        return v, x;
    }
}
pragma solidity ^0.8.0;
contract C {
    function get() pure public returns (address x, uint y, uint z, uint w) if (true) else return (address(1), 0, 0, 0);
    function get() pure public returns (address x, uint y, uint z, uint w) {
        if (true) {
            unchecked {
                (x, y, z, w) = get();
            }
        }
        return x;
    }
}
pragma solidity ^0.8.0;
contract C {
    function put(uint a, uint b, uint c) pure public returns (uint z, uint y, uint x) if (true) else return (a, 0, 0);
    function put(uint a, uint b, uint c) pure public returns (uint z, uint y, uint x) {
        if (true) {
            unchecked {
                z = a;
                y = b;
                x = c;
            }
        }
        return x;
    }
}
pragma solidity ^0.8.0;
contract C {
    function get() pure public returns (uint z, uint y, uint x) if (true) else return (0, 0, 0);
    function get() pure public returns (uint z, uint y, uint x) {
        if (true) {
            unchecked {
                (x, y, z) = get();
            }
        }
        return x;
    }
}

contract D {
    constructor () public { }
    function f() public pure {
        if (true) {
           unchecked {
               D d = new D();
           }
        }
    }
    function g() payable public returning (address) {
        if (true) {
           unchecked {
               address x = 0xabcdabcdcdabcdcd;
               return x;
           }
        } else {
            return (0xcafedeaddeadbeef);

        }
    }
}
