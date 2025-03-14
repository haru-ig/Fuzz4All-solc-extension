pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    bytes10 public x;
    constructor() {
        mutatedInitialize(100, 4);
    }
    function mutatedInitialize(address payable a, uint b) public {
        x = bytes10(keccak256(abi.encodePacked(a)));
    }
    modifier canCallErc20() {
        assert(x.lessThan(0x7D16A4034DD62EFB258509E507A2863A59508177BE509C8D5433FE2D7CE16001));
        assert(x.lessThan(0xB5E8F19E8087C833C8523B3806E9104921A3D946EC28F37A7CABB1460AEE1AEC4));
        _;
    }
    function call(address to) public payable {
        to.call{value:10}(abi.encodeWithSignature("call()"));
    }
}

pragma solidity ^0.8.0;
contract MutatedSimpleFallback {
    function functionWithoutFallback() public: payable {
        bytes memory data = abi.encodeWithSignature("functionWithoutFallback()");
        (bool success, bytes memory result) = address(this).call{value: 0}(data);
        assert(success);
        address _dummy = 0x1;
        assembly {_dummy := msg.sender}
        require(address(this).balance >= 0);
    }
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract MutatedSimpleWriteStorage {
    bytes public x;
    fallback() external payable {
        x = bytes(x);
    }
}


pragma solidity ^0.8.0;
contract MutatedFallback1 {
    uint x;
    contract MutatedFallback {
        fallback() external payable {
            x = 1;
        }
    }
}



pragma solidity ^0.8.0;
contract MutatedFallback2 {
    uint x;
    contract MutatedFallback {
        fallback() external payable {
            address addr;
            assembly {
                addr := gas.add(600000)
            }
            uint[] memory arr;
            arr.push(6);
            x = addr.transfer(600000
