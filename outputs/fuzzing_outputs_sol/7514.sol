pragma solidity ^0.8.0;
interface FallbackInterfaceY {
    function setY(uint256 y_) external;
    function accept(address, uint256) external;
}
contract FallbackModifierZ {
    uint256 public z;
    modifier ifValidZ() {
        require(z > 0, "z must be > 0");
        _;
    }
    function setZ(uint256 z_) public {
        z = z_;
    }
    function accept(address, uint256) public ifValidZ {
        memory _mem;
        address dummy = payable(msg.sender).call{value: 0}{};
    }
}
contract FallbackModifier {
    uint256 y;
    uint256 public z;
    modifier ifValidYandZ() {
        require(y > 0, "y must be > 0");
        require(z > 0, "z must be > 0");
        _;
    }
    function accept(address, uint256) public ifValidYandZ {}
}
contract FallbackInterface is FallbackModifierY, FallbackModifierZ, FallbackInterfaceY {

    function accept(address, uint256) public {
        memory _mem;
        address dummy = payable(msg.sender).call{value: 0}{};
    }
    function setY(uint256 y_) public onlyFallbackRecipient {
        y = y_;
    }
    function setZ(uint256 z_) public onlyFallbackRecipient {
        z = z_;
    }
}
contract ContractWithFallback {
    uint256 public y;
    uint256 public z;
    function accept(address, uint256) public pure {
        memory _mem;
        address dummy = payable(msg.sender).call{value: 0}{};
    }
    function fallback() external payable {
        memory _mem;
        address dummy = payable(msg.sender).call{value: 0}{};
    }
    function setY(uint256 y_) public onlyFallbackRecipient {
        y = y_;
    }
    function setZ(uint256 z_) public onlyFallbackRecipient {
        z = z_;
    }
}
