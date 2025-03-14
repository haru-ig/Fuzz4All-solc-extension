pragma solidity ^0.8.0;
contract EquivalentMutated {
    mapping(address => uint256[]) public x;
}

pragma solidity ^0.8.0;
contract EquivalentReprogrammed {
    EquivalentOld public immutable EOA;
    EquivalentOld public oldValue;
    EquivalentMutated public immutable EOMUTATED;
    EquivalentMutated public mutatedValue;
    EquivalentReprogrammed public immutableEoReprogram;

    constructor(uint256 _number) {
        oldValue = EOA(_number);
        oldValue.x.push(new uint256[](1));
        oldValue.x[0].push(11111);
        mutatedValue = EOMUTATED(_number);
        mutatedValue.x.push(new uint256[](2));
        mutatedValue.x[0].push(22222);
        EoReprogram();
    }

    function() public {
        uint256[] memory x;
        x = oldValue.x[oldValue.x.length - 1];

        x = mutatedValue.x[mutatedValue.x.length - 1];

        this.transfer(0xeff);

    }

    function EoReprogram() public {
        uint256[] memory x;
        x = oldValue.x[oldValue.x.length - 1];

        x = mutatedValue.x[mutatedValue.x.length - 2];

        new EoReprogrammed(_number);

    }

    function mutatedValue_length() public pure returns (uint256) {
        return mutatedValue.x.length == 0? 0 : mutatedValue.x.length;
    }

    modifier mutatedValueOnly() {
        uint256[] memory x;
        x = mutatedValue.x[mutatedValue.x.length - 1];
        uint256[] memory y = new uint256[](2);
        x = x;
        x.push(x);
        if (x.length >= 2) {
            revert("Cannot access mutated value by this function");
        }
        _;
    }
}
