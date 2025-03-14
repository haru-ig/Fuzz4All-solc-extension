pragma solidity ^0.8.0;
interface ISplit {

	function isLastOwner(address _owner) public view returns (bool);
}
