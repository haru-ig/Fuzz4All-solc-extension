pragma solidity ^0.8.0;

interface IQuery {

	function get(id) external view returns (uint storageArea);
}
