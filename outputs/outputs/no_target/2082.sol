pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    constructor() public {
        b = 0x4;
        a = 0x2000;
        c = ((b + a) / (a - 0x7fffff)) / 8;
    }
}

pragma solidity ^0.8.0;
contract Removal {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    address payable d;
    constructor(uint256 _b) public {
        a = _b - _b * uint256(type(uint256).max) / 8;
        b = b - 0x0;
        c = ((a + b) / (b - 0x1ccccdc0)) / 8;
        d = payable((address(this)));
    }
}



pragma solidity ^0.8.0;
contract RevertSelf {
    constructor () {
        revert();
    }
}



pragma solidity ^0.8.0;


contract SimpleMath {
    function add(uint256 a, uint256 b)
            public pure
            returns(uint256) {
            return a + b;
    }
    function sub(uint256 a, uint256 b)
            public pure
            returns(uint256) {
            return a - b;
    }
}



pragma solidity ^0.8.0;

contract RevertString {
    function add(uint256 a, uint256 b)
            public pure
            returns(string memory) {
            return a.toString() + b.toString();

    }
}




pragma solidity ^0.8.0;

contract RevertAddress {
    function subtract(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a.sub(b);
        require(c >= 0);
    }
}
