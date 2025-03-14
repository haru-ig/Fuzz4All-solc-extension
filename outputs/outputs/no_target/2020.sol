pragma solidity ^0.8.0;
contract Semantic {
    int256 public x;
    bytes32 public y;
    function f() public {
        x = 1;
        y = bytes(_y);
    }
}

pragma solidity ^0.8.0;



contract Test is Semantic {
    function f(int _x) public {
        int256 x = x + _x;
        int256 y = int(uint(_f(_x)));
        int256 z = (int256(f())) + int(uint(_f(_f(_f(_x))))));
        int32 a = x.add(_x);
        int32 b = x.add(_x).add(_f(_x));
        int128 k = _f(x);
        int128 j = f().add(x);
        int1 e = _f(x).add(_x);
        x += 3;
        uint m = _y.length;
        if (_y == "") {
            x = 1;
            _y = _y;
            x = 2;
            y = bytes32(_y);
            uint w = _y.length;
            x = 1;
            y = _y;
        }
        _f(_y);
    }

    function _f(int _x) internal returns (uint) {
        return uint(_x);
    }

    function _y() internal pure reverts {
        assembly { revert(mload(0x40)) }
    }
}

pragma solidity ^0.8.0;


contract Test5 {
    function() external payable {}
}


pragma solidity ^0.8.0;

contract Test2 {

	    constructor() payable {
	    }

    function test() public {
    	address payable a;
    	a.call.value(0)();
    }

    function() external payable {}
}


pragma solidity ^0.8.0;

contract Test3 {

	    constructor() public {
	    }

    function test() public payable {
    	address payable a;
    	a.call.value(0)();
    	byte[] memory b = new byte[](48);
    	uint8[] memory c = new uint8[](48);
    	bytes memory d = "hello world!";
    	uint160[] memory e = new uint160[](48);
    	int8[] memory f = new int8[](48);
    	int16[] memory g = new int16[](48);
    	uint16[]
