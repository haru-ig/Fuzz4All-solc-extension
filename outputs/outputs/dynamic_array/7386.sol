pragma solidity ^0.8.0;
contract Test32 {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr[0] += 2;
        dynArr[1] -= 3;
    }
}

pragma solidity ^0.8.0;
contract Test33 {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr[5] = 7;
        dynArr[0] += 8;
        dynArr[1] += 11;
    }
}

pragma solidity ^0.8.0;
contract Test34 {
    uint public arr;
    function modifyTest() private {
        arr += 3;
    }
}

pragma solidity ^0.8.0;
contract Test35 {
    uint[] public dynArr;
    function modifyTest() public {
        dynArr[0] = 3333333;
        uint k = 0;
        k;
        k = 2;
    }
}

pragma solidity ^0.8.0;
contract Test36 {
    address addr;
    function modifyTest() public {
        addr;
        addr += 248442;
    }
}

pragma solidity ^0.8.0;
contract Test37 {
    address public addr;
    function modifyTest() public {
        addr;
        addr += 2;
    }
}

pragma solidity ^0.8.0;
contract Test38 {
    address[] public dynArr;
    function modifyTest() public {
        dynArr[3] = 555555;
        dynArr[0] += 444;
        dynArr[1] *= 222;
    }
}

pragma solidity ^0.8.0;
contract Test39 {
    address[] public dynArr;
    function modifyTest() public {
        dynArr[0] = address(44455);
        address temp = dynArr[0];
        dynArr[0] = address(0);
        temp;
    }
}

pragma solidity ^0.8
