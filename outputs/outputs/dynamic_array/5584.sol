pragma solidity ^0.8.0;
contract Test69 {
    modifier y() {
        address[] memory a = new address[](2);
        _;
        a.length = 1;
    }
    function z() public y {
    }
}

contract Test70 {
    function z() public y {
        address[] memory a = new address[](2);
    }
}

contract Test71 {
    function z() public returns (address) {
        address[] memory a = new address[](2);
        return a;
    }
}

contract Test72 {
    function z() public returns (address) {
        address[] memory a = new address[](2);
        a.length = 1;
        return a;
    }
}

contract Test73 {
    function z() public returns (address) {
        address[] memory a = new address[](2);
    }
}

contract Test74 {
    function z() public returns (address) {
        address[] memory a = new address[](2);
        a.length = 1;
    }
}

contract Test75 {
    function z() public returns (address) {
        address[] memory a = new address[](2);
    }
}

contract Test76 {
    function z() public returns (address) {
        address[] memory a = new address[](2);
        a.length = 1;
    }
}

contract Test77 {
    function z() public returns () {
        address[] memory a = new address[](2);
    }
}

contract Test78 {
    function z() public returns () {
        address[] memory a = new address[](2);
        a.length = 1;
    }
}

contract Test79 {
    function z() public returns () {
        address[] memory a = new address[](2);
    }
}

contract Test80 {
    function z() public returns (address) {
        address[] memory a = new address[](3);
        a.length = 1;
        a[1] = a[2];
    }
}

contract Test81 {
    function z() public returns (address) {
        address[] memory a = new address[](3);
        a.length = 1;
        a[1] = a;
    }
}

contract Test82 {
    function z() public returns (address) {
        address[] memory a = new address[](3);
        a.length = 1;
        a[1] = 1;
        return a[1];
    }
}

contract Test83 {
    function z() public returns (address) {
        address[] memory a = new address[](3);
        a.length = 1;
