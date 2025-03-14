pragma solidity ^0.8.0;
import "../contracts/Z.sol";
contract X is Z {
    function g() public pure returns (uint) {
        assembly {
            mstore(0x0, msg.data)
            let data := mload(0x0)
            return add(data, mload(0x3b80))
        }
    }
}

pragma solidity ^0.8.0;
contract W {
    function f() public pure returns (uint, bool) {
        return (Z.f(), false);
    }
}

pragma solidity ^0.8.0;
contract Z {
    function f() public view returns (uint) {
        return 1;
    }
}
contract X is Z {
    function g() public view returns (uint) {
        return Z.f();
    }
}
contract Y {
    function x() public pure returns (uint) {
        return X.g();
    }
}
contract ZBar is Z {
    function f() public pure returns (uint) {
        return 1;
    }
}
contract WBar is W, ZBar {
    function f() public pure returns (uint, bool) {
        return (Z.f(), false);
    }
}
contract WBarBar is WBar, ZBar {
    function barfoo() public pure returns (uint) {
        return X.g();
    }
}
contract WBarBaz is WBar, ZBar {
    function barfoo() public pure returns (uint) {
        return Z.f();
    }
}
