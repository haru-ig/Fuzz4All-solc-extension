pragma solidity ^0.8.0;
contract Mutator {
    function Fallback(address  ) public {}
}


pragma solidity >=0.8.0;
contract FallbackMutator {
    function FallbackMutator(address  ) public {}
    function fallback() public payable {
        require(msg.value == 10 ether);
        (address _back, bytes memory data) = getCallData(msg.data);
        bytes memory data2 = getFallbackData(bytesLib.stringToBytes("This is a message"));
        (address _backMutator, bytes memory data3) = getCallData(msg.data);
        address _backMutator2 = _backMutator;
	if (_back2 == address(Caller())) {

pragma experimental ABIEncoderV2;
	bytes memory encoded = abi.encodeWithSignature("this(){}", 0xff00);
	(bool isSucceed, ) = encoded.call(bytes4(keccak256(abi.encodePacked(data)))) as  (bool);
	require(isSucceed);
	address(0).call{value:1000.0}("");

	} else if (_backMutator2 == address(Mutator())) {
	Mutator(_backMutator2).FallbackMutator("this(){}", 0xff00);
	}
	}
return data2;
}
