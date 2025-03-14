pragma solidity ^0.8.0;
interface i {
    function m() external payable returns (uint16);
}
contract Foo {
    struct Bar {
        uint8[] array;
        mapping(uint256 => string) test;
    }
    address[] array;
    mapping(address => Bar) Bar;
}
contract Crowdsale is i, Foo{
    function m() external payable returns (uint16) {
        (uint128 minValue, uint128 maxValue) = _getBounds();
        if(!minValue.isLessThan(0)){
            uint16 val = random();
            return minValue + val + maxValue;
        } else {
            return (uint16)((safeAdd(safeMul(50 ether, 1 e18)))) + (safeAdd(safeNegate(random()), safeAdd(safeMul(50 ether, 100 ether))))) + maxValue;
        }
    }

    function random() internal returns (uint16) {
        return uint16(uint256(keccak256(abi.encodePacked(blockhash(block.number-1), block.coinbase))) % 60);
    }

    function _getBounds() internal view returns (uint128 minValue, uint128 maxValue) {
        minValue = (uint128)((safeAdd(safeMul(8, (safeNegate(random()))) / 10)));
        maxValue = (uint128)((safeAdd(safeNegate(minValue), safeAdd(safeMul(20 ether, 1000000000))))) / 10);
    }
}
