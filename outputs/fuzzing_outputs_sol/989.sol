pragma solidity ^0.8.0;
contract Modifiable {
    uint8 public nothing = 10;
    function _modify() internal pure { nothing++; }
}
contract ModifiableWithPureFallback {
    uint8 public nothing = 10;
    receive() external payable {}
    function _modify() internal pure { }
}

pragma solidity ^0.8.0;
contract CallWithFallback {
    uint256 public nothing = 0;
    function _call(Modifiable modifiable) public {
        modifiable.modify();
    }
}
contract CallWithFallbackWithReceive {
    uint256 public nothing = 0;
    receive() external payable {}
    function _call(Modifiable modifiable) public {
        modifiable.modify();
    }
}
contract CallWithFallbackWithPureFallback {
    uint256 public nothing = 0;
    receive() external payable {}
    function _call(Modifiable modifiable) public {
        modifiable.modify();
        modifiable._modify();
    }
}
contract CallWithFallbackWithPureReceive {
    uint256 public nothing = 0;
    receive() external payable {}
    function _call(Modifiable modifiable) public {
        modifiable.modify();
        modifiable._modify();
    }
}
contract CallWithFallbackWithPureFallbackWithReceive {
    uint256 public nothing = 0;
    receive() external payable {}
    function _call(Modifiable modifiable) public {
        modifiable.modify();
        modifiable._modify();
        modifiable.modify();
    }
}
