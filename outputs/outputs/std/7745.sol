pragma solidity ^0.8.0;
contract EquivalentNew {
    mapping(address => uint256) public x;
}

pragma solidity ^0.8.0;
contract EquivalentOld {
    function foo () public {
        x[this] = new uint256[](2);
        x[this][0] = 2;
        x[this][1] = 3;
    }
}

pragma solidity ^0.8.0;
contract EquivalentNew {
    function foo () public {
    uint256[] memory zero;
    x[this] = zero;
    x[this][0] = 2;
    }
}
