pragma solidity ^0.8.0;
import "../i.sol";
contract c {
    function f() public {
        i s = i(msg.sender);
        assert(s.m());
        assert(!s.m());
    }
}

pragma solidity ^0.8.0;
contract c {
    bool value;
    function f(bool val) public {
        if(val) {

        }
    }

    address public owner;
    constructor() {

        setOwner(msg.sender);
    }
    function setOwner(address _newOwner) public {


        owner = _newOwner;
    }
}

pragma solidity ^0.8.0;
contract c {
    address owner;
    function f() public {
        owner = msg.sender;
    }
}

pragma solidity ^0.8.0;
contract c {
    bool public value;
    function f(bool val) public {
        if(val) {


            value = false;
        }
    }
    function m() public pure {
        if(value) {

            f(value);
        }
    }
}

pragma solidity ^0.8.0;
contract c {
    uint public constant uintSize = 10;
    function f() public pure returns (uint160) {


      for(uint i = 32; i < 256; i += 16) {
        uint256 x = 1 << uintSize * i;

        assert(x == (uint160(1) << i));
      }
      uint y;
      if(x >= 1) {

        y = uint160(1) << x;
      } else {
        y = uint160(1) << (0 - x);
      }
      return y;
    }
}

pragma solidity ^0.8.0;
library TestMath {
