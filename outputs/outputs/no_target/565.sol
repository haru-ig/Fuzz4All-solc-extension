pragma solidity ^0.8.0;
contract MutatedInterface {
    function f(address x) external pure returns (uint256 n);
}
interface FutileInterface {
	function call_address(uint256) public returns(address);

}
