pragma solidity ^0.8.0;
contract Mutated {
    function method() internal view returns (uint) {
        return 2 + 1;
    }
}
pragma solidity >=0.5.0 <0.8.0;
contract Modulo {
    function method() internal view returns (uint) {
        return (2) % 3;
    }
}

contract First {
    uint a;
    function First () {
        uint _x;
        (a,_x) = (1,2);
    }
    function method() internal {
        (uint a) = (1,2);
    }
}
contract A is First, Modulo {}
contract B is A {
    function method() internal {
        (uint a,uint256 x) = (101,5);
        a += x;
    }
}



pragma solidity ^0.8.0;
contract First {
    uint a;
    function First () {
        a = 1;
    }
}
contract A is First {}


pragma solidity ^0.8.0;
contract IERC165 {
    interface supportsInterface(bytes4 interfaceId) external returns (bool);
}
library EIP712 {
    struct EIP712Domain {
        string name;
        string version;
        uint256 chainId;
        address verifyingContract;
    }
}
contract IERC712 is IERC165 {
    function isEIP712(bytes4 interfaceId) public view virtual returns (bool);
}
library BasicUtils {
    address constant private _ZERO_ADDRESS = address(0x0000000000000000000000000000000000000000);
    bytes32 constant private _KECCAK_SHA256 = 0x0c5d24608d8fc70186f8e378206994495271d0f0d879970a0b6cbcc5a6f43261c9;
    bytes32 private constant _EIP712_DOMAIN_TYPEHASH = 0x00;
    function _chainId(bytes32 _buf) internal pure returns(uint) {
        return uint(keccak256(_buf));
    }
    function _is
