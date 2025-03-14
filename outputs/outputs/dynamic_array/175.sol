pragma solidity ^0.8.0;
contract C3 {
    function f() public returns (uint256 x) {
        x = 4;

        b.push([1,2]);

        return x;
	}

    function g() public returns (uint256 x) {
        uint256[] memory arr = new uint256[](2);

        arr.push(1);
		_mint(0, arr);
	}
}
