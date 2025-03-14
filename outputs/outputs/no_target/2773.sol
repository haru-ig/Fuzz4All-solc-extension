pragma solidity ^0.8.0;
abstract contract I_Contract {
    uint constant contractValue = 20;

    function getValue() public pure returns (uint);

    function getBase() public pure returns (uint);
}
contract sn_solidity2 is I_Contract {
    uint constant contractValue = 1;

    function getValue() public pure returns (uint) {
        return contractValue;
    }

    function getBase() public pure returns (uint) {
        return contractValue;
    }
}
contract sn_solidity3 is I_Contract {
    uint constant contractValue = 3;

    function getValue() public pure returns (uint) {
        return contractValue;
    }

    function getBase() public pure returns (uint) {
        return contractValue;
    }
}
contract sn_solidity4a is I_Contract {
    uint constant contractValue = 7;

    function getValue() public pure returns (uint) {
        return contractValue;
    }

    function getBase() public pure returns (uint) {
        return base(contractValue);
    }
}
contract sn_solidity4b is I_Contract {
    uint constant contractValue = 8;

    function getValue() public pure returns (uint) {
        return contractValue;
    }

    function getBase() public pure returns (uint) {
        return type(I_Contract).base(contractValue);
    }
}
contract sn_solidity5a is I_Contract {
    uint constant contractValue = 9;

    function getValue() public pure returns (uint) {
        return contractValue;
    }

    function getBase() public pure returns (uint) {
        return contractValue + 3;
    }
}
contract sn_solidity5b is I_Contract {
    uint constant contractValue = 9;

    function getValue() public pure returns (uint) {
        return contractValue + 5;
    }

    function getBase() public pure returns (uint) {
        return contractValue * 2;
    }
}
contract sn_solidity6 {
    uint constant baseValue = 4;
    uint8 a;

    function getValue8() public pure returns (uint8) {
        return a;
    }

    function getBase8() public pure returns (uint8) {
        return 7;
    }
}
contract sn_solidity7a {
    uint constant baseValue = 5;
    uint16 a;

    function getValue16() public pure returns (uint16) {
        return a;
    }

    function getBase16() public pure returns (uint16) {
        return 11;
    }
}
contract sn_solidity7b {
    uint constant baseValue = 5;
    uint8 a;

    function getValue8() public pure returns (uint8) {
        return a;
    }

    function getBase8() public pure returns (uint8) {
        return 5;
    }
}
contract sn_solidity8 {
    uint constant baseValue
