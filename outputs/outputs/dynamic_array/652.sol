pragma solidity ^0.8.0;


pragma abicoder v2;

contract ContractInterface {
	function sendValue(address payable recipient, uint256 amount) public returns(bool);
	function trySendValue(address payable recipient, uint256 amount) public returns(bool);
}



pragma solidity ^0.8.7;

import "./test32.sol";
contract MyContract is test32 {

    uint value1;

    function doSomething() public {
        require(a58[3] == 28);
        value1 = a58[3];
        require(value1==28);
        value1 = value1+2;
        require(value1==30);
        require(value1-2==2);
    }

}
