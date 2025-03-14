pragma solidity ^0.8.0;
contract Trait {
        function foo() external view returns (bool) {
                return true;
        }
}
contract Trait2 {
        function foo() external view returns (bool) {
                return false;
        }
}
contract Caller {
        function callModifierExample(address o) {

                o.call{value: 0.001 ether}(abi.encodeWithSignature("foo()"));
        }
        function callTraitExample(address o) {

                o.call{value: 0.001 ether}(abi.encodeWithSignature("traitOf(address)"));
        }
        function callTrait2Example(address o) {

                o.call{value: 0.001 ether}(abi.encodeWithSignature("traitOf(address)"));
        }
}
contract LowLevelCaller {
        receive() external payable {}
        fallback () external payable {}

        function call(address target_) {
                bytes memory data = abi.encodeWithSignature("foo()");
                bytes memory emptyData = abi.encodeWithSignature("()");
                (bool success,, ) = target_.call{value: 0.001 ether}(data);
                (bool success,, ) = target_.call{value: 0.001 ether}(emptyData);
        }
        function callToWrite(address target_, uint256 value_) {
                bytes memory data = abi.encodeWithSignature("foo()");
                bytes memory emptyData = abi.encodeWithSignature("()");
                (bool success,, ) = target_.call{value: value_}(data);
                (bool success,, ) = target_.call{value: value_}(emptyData);
        }
}
