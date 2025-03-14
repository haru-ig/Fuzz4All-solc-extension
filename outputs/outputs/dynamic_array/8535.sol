pragma solidity ^0.8.0;
function changeNestedArrays(StructWithNestedArrays2 memory x) public pure {
    (x.array1)[1] += 1;
    x.nestedArrays2[1][1] += 1;
}

pragma solidity ^0.8.0;
function callTest() public pure {
    uint256[] memory x;
    x.push(1);
    assert(x.length == 1);
    changeNestedArrays(x.pop());
    assert(x.length == 0);
}
