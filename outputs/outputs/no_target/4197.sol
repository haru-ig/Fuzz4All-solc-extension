pragma solidity ^0.8.0;
contract P11 {
  function i() public pure returns (uint256) {
    return 1 / 2;
  }
}

pragma solidity ^0.8.0;
contract P11 {
  function i() public pure returns (uint256) {
    return P11(address(0)).i();
  }
}


pragma solidity ^0.8.0;
contract P11 {
  function i() public pure returns (uint256) {
    return 1 / 0;
  }
}
contract P {
    function set( P11 p11 ) public {
    }
}


pragma solidity ^0.8.0;
contract P11 {
  function i() public pure returns (uint256) {
    return P11(address(0)).i2();
  }
}
contract P {
    function set( P11 p11 ) public {
    }
}
contract P {
    function f( P11 p11) public returns (uint256) {
        return p11.i();
    }
}


pragma solidity ^0.8.0;
contract P11 {
  function i() public pure returns (uint256, uint256) {
    uint256[3] memory tmp;
    return (1, 2,3);
  }
}
contract P {
    function set( P11 p11) public {
    }
}
contract P {
    function f( P11 p11) public returns (uint256[3]) {
        return p11.i();
    }
}


pragma solidity ^0.8.0;
contract P11 {
  function i() pure public returns (uint256, uint256, uint256) {
    return (uint256.max / 2, uint256.min / 2, tmp[1] + uint256.max);
  }
}
contract P {
    function set( P11 p11) public {
    }
}
contract P {
    function f( P11 p11) public returns (uint256, uint256, uint256) {
        return p11.i();
    }
}
