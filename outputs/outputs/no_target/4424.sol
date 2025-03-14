pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure {
        assembly {
            let myuint := add(32, -1)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint := add(int32(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_2 := add(int8(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_3 := add(bool(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_4 := add(int64(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_5 := add(uint8(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_6 := add(uint16(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_7 := add(uint32(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myuint_8 := add(uint64(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let myaddress := add(address(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let mybool_1 := and(uint32(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let mybool_2 := or(uint32(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let mybool_3 := xor(uint32(32), 4)
        }
    }
}
contract L {
    function myFunction() public pure {
        assembly {
            let mybool_4 := not(uint32(32))
        }
    }
}
