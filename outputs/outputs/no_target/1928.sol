pragma solidity ^0.8.0;
contract UintModifications {
    uint constant X = 10;
    function x() pure public returns (uint) {
        return uint256(uint256(uint160(X - 1) + UintModifications.x()) / uint256(X));
    }
}

contract UintWrapping {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return uint160(<uint256(X) * <uint256(X) * UintWrapping.x() / X>) / X;
    }
}

contract UintModificationsWrapping {
    uint constant X = 10;
    function x() pure public returns (uint) {
        return <uint256(uint256(uint160(X - 1) + UintModificationsWrapping.x()) / uint256(X))) / X;
    }
}

contract UintWrap {
    uint const X = 1;
    function x() pure public returns (uint) {
        return <uint256(<uint256(X) * uint256(X) * UintWrap.x() / X>) / X};
}

contract UintModificationsWrap {
    uint const X = 10;
    function x() pure public returns (uint) {
        return uint256(<uint256(uint256(uint160(X - 1) + UintModificationsWrap.x()) / uint256(X))) / X;
    }
}

contract Uint256Wrapping {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return <uint256(uint256(uint256(X - 1) + Uint256Wrapping.x()) / uint256(X))};
    }
}

contract Uint256Modifications {
    uint constant X = 10;
    function x() pure public returns (uint) {
        return uint256(uint256(uint160(X - 1) + Uint256Modifications.x()) / uint256(X));
    }
}

contract Uint256Wrap {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return <uint256(<uint256(X) * uint256(X) * Uint256.x() / X>) / X};
}

contract Uint256ModificationsWrap {
    uint constant X = 10;
    function x() pure public returns (uint) {
        return <uint256(uint256(uint256(uint160(X -
