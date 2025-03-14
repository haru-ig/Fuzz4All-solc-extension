pragma solidity ^0.8.0;
contract SimpleMutation2 is SimpleMutation {
    uint32 value;

    modifier onlyValue() {
        require(value == 3, "Value must be set to 3");
        _;
    }

    function set(uint32 v) public onlyValue {
        value = v;
    }
}
contract LowLevelCallMutation1 {
    uint value = 1;

    function test() public pure returns (uint) {
        return 5;
    }
}
contract LowLevelCallMutation2 {
    uint value = 1;

    function doWork() public returns (uint) {
        return LowLevelCallMutation1.test();
    }
}


pragma solidity ^0.8.5;
contract TransferWithFallback {
    address receiver;
    mapping (address => uint256) totalAmount;

    function transfer(address _to, uint256 _amount) public returns (bool) {
        require(receiver == address(0) || receiver == msg.sender, "TransferWithFallback: caller is not contract owner");
        require (_to!= address(0) && _amount > 0, "TransferWithFallback: to address should not be empty");
        totalAmount[msg.sender] += _amount;
        totalAmount[_to] += _amount;
        receiver = _to;
        return true;
    }
}
contract LowLevelFallbackMutation1 {
    address user;
    address fallbackAddress;

    function test() public returns (uint, uint, uint256) {
        user = msg.sender;
        fallbackAddress = msg.sender;

        return (testHighLevelCall(msg.sender), message.calldata.length, 1);
    }

    function testHighLevelCall(address _user) public returns (uint) {


        return lowLevelCall();
    }



    function highLevelCall() public {
        bytes memory test = assembly {
            {let x := mload(add(user, 0x04))}
            {return x}
        }();
        user = address(0);
        fallbackAddress = address(0);

        msg.data = test;
    }
}
