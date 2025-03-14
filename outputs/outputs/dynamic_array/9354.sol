pragma solidity ^0.8.0;
contract Arrays {
    mapping(uint => uint256) public m;
    uint[] public nonEmptyArray;
    uint[1] public nonStaticArray;

    function modifyNonArrayMember(uint v) public {
        nonEmptyArray.push(2);
        nonEmptyArray[1] = 7;
        nonStaticArray[0] = 8;
        m[v] = 2;
    }
    function modifyNonArrayMemberWithArrayAndDynamicSizeChange() public {
        c.push(3);
        m[1] = 9;
    }

    function modifyingArray(uint w) public {
        a.push(4+w);
        uint[] storage m2 = m;
        c[1] = 12;
        m2[8] = 20;
        m[3] = 2;
    }
    function accessingStaticElement() public pure returns(uint) {
        return nonStaticArray[0];
    }
    function accessingNonArrayMember() public pure returns(uint) {
        return nonEmptyArray[1];
    }
    function accessingNonArraySize() public pure returns(uint) {
        return nonEmptyArray.length;
    }
    function accessingStaticSize() public pure returns(uint) {
        return nonStaticArray.length;
    }
}

pragma solidity ^0.8.0;
contract Arrays {
    uint32[] public a;

    function testAccessNonArray() public pure {
        a.push(1);

        uint[] memory rNonNonEmptyArray = rNon(a);
        rNonNonEmptyArray.push(2);
        uint32 x = rNonNonEmptyArray[10];
        require(a.length >= 1, "!x");
    }

    function testAccessStatic() public pure {
        a.push(1);

        uint[] memory rStaticNonEmptyArray = rStatic(a);
        rStaticNonEmptyArray.push(2);
        uint32 x = rStaticNonEmptyArray[10];
        require(a.length >= 1, "!x");
    }

    function testAccessNonArrayWithDynamicSizeChange() public pure {
        a.push(1);
        a.push(1);
        uint[] memory rNonNonEmptyArray = rNon(a);
        rNonNonEmptyArray.push(2);
        uint32 x = rNonNonEmptyArray[10];
        require(a.length == 3, "!x");
    }

    function testAccessStaticWithDynamicSizeChange() public pure {
        a.push(1);
