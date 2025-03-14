pragma solidity ^0.8.0;
interface I2 {
    function modify() external;
}
contract A is I1, I2 {
    uint[] public stateKeys;

    function modify() public {
        stateKeys.push(1);
        stateKeys.push(2);
        stateKeys.push(3);

    }

    function use(uint256 key, bytes4 functionSelector) public {
        stateKeys[key] = I1(address(this)).use.selectorCalldata(functionSelector);
    }
}
