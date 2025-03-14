pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (address) {
        address r;
        assembly {
            r := mul(2, 42)
        }
        return r;
    }
}
contract L {
    function myFunction() public pure returns (uint) {
        uint r;
        assembly {
            r := mul(2, 42)
        }
        return r;
    }
}
contract L {
    mapping (address => bool) public map_;
    function myFunction() public pure returns (mapping (address => bool)) {
        mapping (address => bool) r;
        assembly {
            r := map
        }
        return r;
    }
}
contract L {
    mapping (address => uint8) public enum_;
    function myFunction() public pure returns (mapping (address => uint8)) {
        mapping (address => uint8) r;
        assembly {
            r := enum
        }
        return r;
    }
}
contract L {
    mapping (address => uint) public bytes_;
    function myFunction() public pure returns (mapping (address => uint)) {
        mapping (address => uint) r;
        assembly {
            r := bytes
        }
        return r;
    }
}
contract L {
    enum F {


        uint256 _0, _1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14, _15, _16, _17, _18, _
