pragma solidity ^0.8.0;
contract C {
    address[] data;
    address[] data2;
    uint[] data3;
    uint _b = 1;
    constructor() public {
        data.push(new address(uint(1)));
    }
    receive() external payable {
    }
    function f() public {
        data = new address[](0);
        data.push(new address(uint(_b)));
        data2.push(new address(uint(_b + 1)));
        data = data2;
        data2 = new address[](0);
        data3.push(uint(_b + 2));
        uint a = 1;
        data2.pop(); data.push(a);
        a = 3;
        data3.pop(); data2.push(a);
    }
}

pragma solidity 0.8.0;
contract C {
    function f() public pure returns(uint[] memory) {
        return (new uint[](10));
    }
    receive() external payable {}
    function g() public pure {
        uint[] memory a;
        (uint b) = a.push(uint(1));
    }
    function h() public pure returns((uint, bytes1, address[] memory), uint) {
        return (uint(0), "Hello", new address[](0));
    }
}

pragma solidity 0.8.0;
contract C {
    function h() public pure {
    }
    receive() external payable {
        h();
    }
}
