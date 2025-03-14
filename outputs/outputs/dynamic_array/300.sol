pragma solidity ^0.8.0;
contract R1 {
    uint256[] arr;
    function f() public {
        uint256 a = arr[1];
        arr[1] = 0;
        a;
    }
}

pragma solidity ^0.8.0;
contract R10 {
    struct I {
        uint[] txs;
    }
    I[] arr1;
    mapping (address => I) m;
    function f() public {
        arr1[1] = m[address(this)].txs;
        I storage store = m[address(this)];
        store.txs[0] = 0;
        I memory store = m[address(this)];
        store.txs[1] = 0;
        store.txs;
        I memory store2 = arr1[1];
        store2.txs[0] = 2;
    }
}

pragma solidity ^0.8.0;
contract R11 {
    uint[] [] arr;
    function f() public {
        arr[0].push(2);
        uint[] memory a = arr[0];
        arr[0] = a;
    }
}

pragma solidity ^0.8.0;
contract R12 {
    uint[] [] arr;
    function f() public {
        arr[0][1] = 2;
        uint[] memory a = arr[0];
        arr[0] = a;
        uint[] memory b = arr[1];
        arr[1];
    }
}

pragma solidity ^0.8.0;
contract R21 {
    uint256[] [] arr;
    function f() public {
        uint256[] calldata b = arr[0];
    }
}

pragma solidity ^0.8.0;
contract R3 {
    uint256[] array;
    function f() public {
        array[1] = 0;
        uint256[] storage a = array;
        a[0] = 2;
        uint256[] memory b = array;
        a[1] = 0;
        uint256[] memory c = array;
        a[0] = 0;
        a;
        uint256[] memory d = array;
        a[
