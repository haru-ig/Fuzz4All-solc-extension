pragma solidity ^0.8.0;
contract Unmutate {
    function mutate() public payable {
        _ = address(uint160(this));
        (bool success1) = msg.sender.call{value: 50 ether}("");
        if (!success1) {
            revert("");
        }
    }
}
pragma solidity ^0.8.4;
contract Callers {
    function call() public {
        bytes memory callData = abi.encodeWithSig(
            "fallback() external payable"
        );

        bytes memory responseData = call.value(50 ether)(callData);

        assembly {
            if mload(0) == 0 {
                returndatacopy(0, returndata, returndatasize())
            } else {
                returndatacopy(0, 0, 0)
            }
        }
        AssemblyLib.log(address(this).balance);

        uint success = AssemblyLib.isContract(
            assembly {
                returndatacopy(0, 0, 0)
            }
        );
        emit Success(responseData, success);
    }

    constructor() public {
        _;
    }

    struct AssemblyLib {
        function log(bytes memory) internal pure {
        }

        function isContract(bytes memory) internal view returns (bool) {
            return getCodeSize.dynamicCall(
                address(this),
                abi.encodeWithSignature("isContract()")
            ) == 0;
        }

        function getCodeSize.dynamicCall(address, bytes memory)
            internal
            view
            returns (uint)
        {
            assembly {
                let ptr := mload(0)
                let codesize := dynamicCodeSize(ptr)
                mload(0) := ptr
                return(codesize)
            }
        }

        function dynamicCodeSize(address) internal view returns (uint) {
            assembly {
                let ptr := mload(0)
                let codesize := dynamicCodeSize(ptr)
                mload(0) := ptr
                return(codesize)
            }
        }
    }

    event Success(bytes memory data, bool success);
}
