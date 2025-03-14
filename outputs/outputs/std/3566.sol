pragma solidity ^0.8.0;
interface ICaller{
    function callerFunction() external view returns (uint);
}
library Delegates {

	function delegateCallerFunction(address _a, bytes memory _b) external view returns (uint256){
		IDelegateCaller d = IDelegateCaller(_a);
		DelegateCaller.DelegateCallerFunctionResult memory _result = d.delegateCallerFunction();

		bytes memory _c = abi.encodeWithSelector(_result.delegateCallerFunction.selector);
		if (bytes(_b).length > 0) {
			return assembly {
			let a := add(_result.delegateCallerFunction, 0x20)
			delegatecall(gas(), a, add(_c, 0x20), add(_b, 0x20), mload(_b), mload(_b))
			return
			}
		}
		return assembly {
		let a := add(_result.delegateCallerFunction, 0x140)
		return(mload(a))
		}
	}
}
