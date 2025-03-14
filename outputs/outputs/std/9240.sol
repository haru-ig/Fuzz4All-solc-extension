pragma solidity ^0.8.0;






contract MutatingContract {
    uint256[] private a;

    function foo(uint256[] memory a) public pure {
        a[1] = 2;
    }
}
contract MutatingContract {
    bytes256[] private a;

    function foo(bytes256[] memory a) public pure {
        a[1] = bytes256(1);
    }
}
contract MutatingContract {
    bytes32[] private a;

    function foo(bytes32[] memory a) public pure {
        a[1] = bytes32(1);
    }
}
contract MutatingContract {
    address[] private a;

    function foo(address[] memory a) public pure {
        a[1] = address(new uint256(1));
    }
}
contract MutatingContract {
    address[] private a;

    function foo(address[] memory a) public pure {
        a[3] = address(0xf1);
    }
}
