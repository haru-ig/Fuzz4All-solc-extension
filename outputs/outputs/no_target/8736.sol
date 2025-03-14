pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV01NonMutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[msg.sender] = msg.value;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV01 {
    mapping (address => address) public mints;
    function f() public {
        mints[msg.sender] = msg.value;
	mints[msg.sender] = 0;
    }
}
