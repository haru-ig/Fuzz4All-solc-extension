pragma solidity ^0.8.0;
contract semanticallyEquiv2{
    function(uint256 a, uint256) public pure returns (uint256) {
	return a * 100000;
    }
}

pragma solidity ^0.8.0;
contract semanticallyEquiv2{
    modifier(uint256 a) {
	require(a > 10000000);
	_;
    }
    function f(uint256 a) public pure returns (uint256) {
	return a * 10000000;
    }
}

pragma solidity ^0.8.0;
contract semanticallyEquiv2{
    function(uint256 a, uint256 b) public pure returns (uint256) {
	return a + b * 10000000;
    }
}
