pragma solidity ^0.8.0;
contract CallerMutatingFallback2 {
	function fallback() public payable {
        uint x = 0;
        x += 1;
        x = 42;
        x += 10;
        require(x == 62);
    }
}






pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Fail {
    function fail() external pure {
        uint x = 42;
        x += 10;
        require(x == 62);
    }
}


pragma solidity ^0.8.0;
contract FailWith2 {
    function failWithReturn() external pure returns (uint) {
        uint x = 42;
        x += 10;
        require(x == 62);
        return x;
    }
}

contract NonContract {
    function print() external pure {
        uint x = 42;
        x += 10;
        address payable x42 = payable(42);
        x42.transfer(0x5a4d503a);
        require(x == 62);
    }
}
