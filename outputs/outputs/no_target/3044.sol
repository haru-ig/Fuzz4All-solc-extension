pragma solidity ^0.8.0;
contract third {
    function g() public pure {
        (address a) = (address(1));
    }
    function h() public pure {
        (address a) = (address(0));
    }
}
contract third {
    function g() public pure {
        (address,address) = (address(1),address(1));
    }
    function h() public pure {
        (address,address) = (address(0),address(0));
    }
}

pragma solidity ^0.8.0;
contract third {
    uint256 a;
    function g() public pure {
        require(a>=0);
        a = 33;
    }
    function h() public pure {
        (a,uint256)=(address(this), uint256(33));
    }
}
