pragma solidity ^0.8.0;
contract BetterCase10 {
}
contract BetterCase11 {
}
contract BetterCase12 {
}

pragma solidity ^0.8.0;
contract Fixed {
    uint256 constant elementCount = 100;
}

pragma solidity ^0.8.0;
contract String {
    uint256 private immutable MAX_CHARS = 32;

    function bytes2str(bytes memory _bytes)internal pure returns (string memory _output) {
        for (uint256 i = 0; i < _bytes.length; i++) {
            _output.= bytes1char(_bytes[i]);
        }
    }

    function bytes1char(bytes1 c)internal pure returns (string memory _output) {
        _output = string(abi.encodePacked(c));
    }

    function checkLength(bytes memory _input)internal pure returns(string memory _output) {
        require(bytes(_input).length < MAX_CHARS, "Length too long");
        _output = string(abi.encodePacked(_input));
    }
}
contract A {
    string str;
    function f() public {
        require(false, "Error");
    }
    function g() public {
        return str;
    }
    function h() public {
        unchecked {
            str = str;
        }
    }
}
contract B is String {
    bytes1 a;
    function g() public pure returns (bytes1) {
        return a;
    }
    function h() public {
        a = string(abi.encodePacked(uint8(36)));
    }
}
contract C is String {
    string str;
    function g() public {
        return str;
    }
    function h() public {
        str = "AAA";
    }
}

pragma solidity ^0.8.0;
import "B.sol";
contract D is B {
}
