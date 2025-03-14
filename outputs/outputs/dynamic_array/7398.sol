pragma solidity ^0.8.0;
contract Test33 {
    uint i;
    uint256[] public dynArr;
    function modifyTest() public {
        uint128 s = uint128(i);
        dynArr.push(s + 2);
    }
}
