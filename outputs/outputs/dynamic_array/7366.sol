pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr[0] = 3;
        dynArr.push(9);
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint[] public dynArr;
    bytes4 public addMember = type(uint[]).hash(uint(1));
    function modifyTest() public {
        dynArr.push(addMember.value(1) {
         this.test.addMember.value(1);
        });
    }
}
