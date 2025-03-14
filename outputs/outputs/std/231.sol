pragma solidity ^0.8.0;
contract Array {
    uint256 [5] public A;
    function set(uint256 i, uint256 v) public returns (bool) {
        A[i] = v;
        return true;
    }
    function get(uint256 i) public view returns (uint256) {
        return A[i];
    }
    function push() public returns (bool) {
        A.push(1);
        return true;
    }
    function pop() public returns (bool) {
        delete A[A.length - 1];
        return true;
    }
    function pushMany(uint256 n) public returns (bool) {
        for (uint256 i = 1; i <= n; i++) {
            A.push(i);
        }
        return true;
    }
    function popMany(uint256 n) public returns (bool) {
        for (uint256 i = 0; i < n; i++) {
            delete A[A.length - 1 - i];
        }
        return true;
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint256 [5] public A;
    function set(uint256 i, uint256 v) public returns (bool) {
        A[i] = v;
        return true;
    }
    function get(uint256 i) public view returns (uint256) {
        return A[i];
    }
    function push(uint256 v) public returns (bool) {
        A.push(v);
        return true;
    }
    function pop() public returns (bool) {
        delete A[A.length - 1];
        return true;
    }
}


pragma solidity ^0.8.0;
contract Array {
    uint256 [5] public A;
    function set(uint256 i, uint256 v) public returns (bool) {
        A[i] = v;
        return true;
    }
    function get(uint256 i) public view returns (uint256) {
        return A[i];
    }
    function push(address v) public returns (bool) {
        A.push(uint256(uint128(keccak256(abi.encodePacked(address(v)))))%10**(uint256(257)));
        return true;
    }
    function pop() public returns (bool) {
        delete A[A.length - 1];
        return true;
    }
}
