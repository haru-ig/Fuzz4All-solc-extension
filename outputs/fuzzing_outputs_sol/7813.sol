pragma solidity ^0.8.0;
contract FallbackWithNoModifiers {
    fallback() external payable {}
}
contract FallbackWithModifiers {
    receive() external payable {}
    fallback() external payable {}
    modifier someOtherModifier {
            _;
    }
}
contract UseSameFallback {
    bytes11[14] memory b = [24, 12, 77, 127, 108, 156, 110, 14, 115, 69, 108, 102, 69, 98, 121, 83];
    fallback() public payable {
        b[10] = 11;
    }
}

pragma solidity ^0.8.0;
contract LowLevelCallSameFallback {
    fallback() public {
    }
    function contractWithoutFallback() external payable {
            uint256 a;
            assembly {
                div(a, 1);
            }
    }
    function contractFallbackWithModifiers() external payable {
            uint256 b;
            assembly {
                div(b, b);
            }
            emit EmittedValue(b);
    }
    function contractFallbackWithReceive() public payable {
            bytes11 c = [66, 66, 66];
            assembly {
                mstore(0x0, mload(c) + 16)
            }
            receive() external payable {}
    }
    function contractFallbackWithLowLevelCall() public payable {
            uint256 a;
            address payable payee;
            address payable payeeBackup;
            emit EmittedValue(a);
            assembly {
                div(a, 1);
            }
            payee = payeeBackup;
            emit EmittedValue(a);
        }
    function receiveValueWithReverted() external payable {
            revert();
    }
    event EmittedValue(uint256 a);
}
