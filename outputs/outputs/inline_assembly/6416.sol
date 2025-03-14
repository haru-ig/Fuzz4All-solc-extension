pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample35 {
    bool public x;
    function increaseByTen() public {
        x =!x;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample5 {
    uint public j;

    function multiplyThree(uint a, uint b) public pure returns (uint c) {
        c = a * b * 3;
    }

    function addFour(uint a, uint b) public pure returns (uint c) {
        c = a + b + 4;
    }

    function callWithArgumentPassing(uint a) public {
        c = j;
        c = multiplyThree(c, a);
        c = addFour(c, a);
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample36 {
    uint public j;
    uint public k;
    uint public z;

    function increaseByTenWithNoReentrancy(uint e) public pure nonReentrant {
        j = 1 + j;
        z = 100 + 1;
    }
    function increaseByD(uint a) public pure {
        j = j + a;
        z = a + 1;
    }

    function increaseByYul(uint b, uint d) public {
        j = 3.53857E-6+1 + j;
        z = b + 200 + z;
    }

    function increaseByX(uint d) public {
        z = 200 + z;
        j = z + j;
    }

    function increaseByTen(uint a) public onlyOwner {
        k = a + k;
        j = 2 * a + 1 + j;
        x = true;
        increaseByTenWithNoReentrancy(a);
    }

    function increaseByTen2(uint b
