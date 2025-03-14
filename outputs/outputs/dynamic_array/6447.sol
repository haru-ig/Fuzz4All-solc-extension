pragma solidity ^0.8.0;
contract c {

    address public r;


    constructor() external {

        bytes memory data;
        emit M(address(this), 0, data);
    }

    function f() public payable returns (uint16) {
        emit F(address(this), 0, 0, r, 0);
        bytes memory data;
        emit L(address(this), 0, data);

        uint16[] memory arr = new uint16[](1);

        emit MM(address(this), 0, r, 0, data);

        arr[0] = 1;
        emit A(address(this), 0, arr, data);
        arr[0] = 2;
        emit AA(address(this), 0, arr, data);
        arr[0] = 0;
        emit AAAA(address(this), 0, arr, data);
        emit M(address(this), 0, 2, data);
        emit Z1(address(this), 0, 2, data);
        emit Z3(address(this), 0, 2, data);
        return 2;
    }

    function l(uint n) public {

        emit LLLL(address(this), n, 0);
    }

    function ll(uint n1, uint n2) public {
        emit LLLL(address(this), n1, n2);
    }
    function m(uint n, uint m) public {
        emit MM(address(this), n, 0, n1);
    }
    function mm(uint n, uint m) public {
        emit MM(address(this), n, 1, n1);
    }
    function a(address a, uint n, uint[] calldata arr, bytes calldata data) public {
        emit A(address(this), n, arr, data);
    }
    function aa(address a, uint n, uint[] calldata arr, bytes calldata data) public {
        emit AA(address(this), n, arr, data);
    }
    function aaaa(address a, uint n, uint[] calldata arr, bytes calldata data) public
