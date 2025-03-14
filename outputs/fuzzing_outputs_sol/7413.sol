pragma solidity ^0.8.0;
contract FallbackExample {
    function __fallback() public pure {
        this.functionWithoutPayableFallback;
    }
    function functionWithoutPayableFallback() public pure { }
}


pragma solidity ^0.8.0;
contract WithFallbackModifier {
    function __fallback() public pure {}
    function withModifier() public pure {}
}
contract FallbackExample {
    function __fallback() public pure {
        this.functionWithoutPayableFallback;
    }
    function functionWithoutPayableFallback() public pure { }
}

pragma solidity ^0.8.0;
contract ReentrancyExample {
    function callByModifier() public pure {
        (bool success, bytes memory returnData) = (address(this), abi.encodeWithSignature(get()));
        require(success);
        require(returnData.length == 4);
        address self = address(uint256(uint256(returnData) >> 2) >> 0);
        require(self == msg.sender);
    }
    function callByDirectInvocation() public pure {
        var data = abi.encodeWithSignature(get());
        address self = address(uint256(uint256(data) >> 2) >> 0);
        require(self == msg.sender);
    }
    function get() public pure returns (uint256) {
        return message.value;
    }
}


pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
import "./MutateExample.sol";
contract MutateAndFallback {
    uint8 public value;
    function get() public view returns (uint8) {
        return this.value;
    }
    function payValue(address payable user, uint _value) public payable {
        this.value = _value;
        user.transfer(_value);
    }
}

pragma solidity ^0.8.0;
contract MutateContract {
    MutateExample mut;
    function() public payable {
        this.transfer(this.value);
    }
    constructor(address _mut) public {
        mut = MutateExample(_mut);
    }
}

pragma solidity ^0.8.0;
contract FallbackContract {
    FallbackExample fallback;
    function get() public view returns (uint) {
        return fallback.get();
    }
    function callByCallerOrDelegate() public {
        uint256 val = fallback.get();
        uint256 val0
