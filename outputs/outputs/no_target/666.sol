pragma solidity ^0.8.0;
library SafeMathUint160 {
    function sub(address a, address b) internal pure returns (uint256) {
        require(a!= b);
        if (a < b) {
            return (2**256 + a).sub(2**256);
        } else {
            return b.sub(a);
        }
    }
    function add(address a, address b) internal pure returns (uint256) {
        return (a.add(b));
    }
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a / b;
        return c;
    }
}

contract LenderWrapper {
	address public wrappedAddress;
}
contract LenderMock is LenderWrapper {
	function deposit() internal {
	}
	function withdraw(uint256 value) returns (uint256) internal {
		return value;
	}
}
contract LenderLenderAdapter {
    function deposit(address wrappedAddress) public payable {
    }
    function withdraw(address wrappedAddress, uint256 value) public returns (uint256) {
        return withdraw(value);
    }
}
