pragma solidity ^0.8.0;
contract MutatedCaller6 {
    function mut(address _addr, uint256 _index) payable external {
        _addr[0];
    }
}
contract MutatedCaller7 {
    function modded_mut(uint256 _index) payable external {
        _index;
    }
}

pragma solidity ^0.8.0;
contract MutatedCaller8 {
    function modded_mut(uint256 _index) payable external {
        _index;

        receiver.payable(msg.value);
    }
}
contract ExampleMutations {

    bytes32 public constant TRANSFER_CALL = bytes32(0x353ea956);
    bytes32 public constant CALL = bytes32(0x42136457);
    bytes32 public constant CALL_WITHOUT_DATA = bytes32(0x42136465);
    function sendEther(address _to) public payable returns (bytes memory) {
        _to.transfer(msg.value);
        return abi.encodeWithSignature("fallback()");
    }
    function sendEtherWithoutData(address _to) public {
        _to.transfer(msg.value);
    }
    function call(address _to) public payable returns (bytes memory) {
        _to.delegatecall(abi.encodeWithSignature("fallback()"));
        return "Hello World!";
    }
    function callWithoutData(address _to) public returns (bytes memory) {
        emit CallWithoutData();
        _to.delegatecall(abi.encodeWithSignature("fallback()"));
        return "Hello World!";
    }

    function mut(address _addr) public {
        mut(_addr, 0);
    }
    function mut(address _addr, uint256 _index) public {
      emit MutatedCaller2(_addr, _index);
      mut(_addr, _index);
    }
    function getAddress(address _addr) public pure returns (address) {
        return _addr;
    }
    function callMutated(address _to) public returns (bytes memory) {
        _to.mut(CALL);
        return abi.encodeWithSignature("fallback()");
    }
}
