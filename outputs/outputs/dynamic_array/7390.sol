pragma solidity ^0.8.0;
contract Test33 {
    uint i;
    uint[] public dynArr;
    function modifyTest() public {
        dynArr.push(i = dynArr.length + 1);
    }
    function modifyAfterCall() public returns (bool) {
        bool success;
        dynArr.push(i = dynArr.length + 1);
        (success,) = dynArr.call(abi.encodeWithSignature("add_int(uint256)",28));

        return success;
    }
}
