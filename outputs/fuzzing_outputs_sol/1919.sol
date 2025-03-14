pragma solidity ^0.8.0;
contract BurningWithFallbackInterface {
    uint256 private constant _value = 3;
    uint256 public _amount;
    constructor() {
        _amount = 3;
    }
    receive() external payable {
        _amount += _gasPrice;
    }
    fallback () external payable {
    }
    function burn() public {
    }
    receive() external {
    }
    event Burned();
}



contract MultiFailureContracts {
    uint256 private constant _value = 250;

    function contractWithFallback (address fallbackAddr, uint256 value) public {
        if (value >= _value) {
            BurningWithFallback burningWithFallbackInstance = BurningWithFallback(fallbackAddr);
            burningWithFallbackInstance.burn();
            emit TokenPaid();
        } else {
            require(false);
        }
    }

    fallback() external {
        require(false);
    }

    function callWithFallback (address fallbackAddr, uint256 value) public {
        if (value >= _value) {
            BurningWithFallbackInterface burningWithFallbackInterfaceInstance = BurningWithFallbackInterface(fallbackAddr);
            burningWithFallbackInterfaceInstance.burn();
            emit Burned();
        } else {
            require(false);
        }
    }

}
