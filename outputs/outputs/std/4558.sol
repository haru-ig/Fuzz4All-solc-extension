pragma solidity ^0.8.0;
interface Address {
	function isContract(address _account) external view returns(bool);
}
contract MyContract is Address {
    function set(bool _state) public {
        selfdestruct(_state);
    }
    function get() public view returns(bool) {
        return true;
    }
}
