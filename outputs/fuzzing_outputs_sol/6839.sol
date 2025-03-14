pragma solidity ^0.8.0;
contract SimpleCall {
    uint value;
    function call(Address _callTo) public view {
        value = call.value(address(new(Receiver))).gas(1).to(_callTo).value(address(this)).gas(1).call();
    }

    function to(address _callTo) public {

        bytes memory data = abi.encodeWithSignature("mutate(", "");
        _callTo.call(data).value(address(this)).gas(1);
    }
}
