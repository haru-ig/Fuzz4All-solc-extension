pragma solidity ^0.8.0;
contract Test45 {
    function mod(uint x, uint y) internal pure returns (uint) {
        return x * y / x + y;
    }
    function test() public view {
        uint x = arr[0] - 1;
        uint arrB = []: uint[](10);
        ModReentrancyCheck callData = ModReentrancyCheck(mod).ReentrancyCheck(9999, 2111);
        if (x == arr[0]) {

            while (true) {
                uint tmp1 = mod(x, 20);
                uint tmp2 = arrB[tmp1];
                uint tmp3 = tmp2 + 1;
                arrB[tmp1] = tmp3;
                if (x == arr[0]) {
                    break;
                }
                x = tmp3;
            }
        }
        arrB[0] = 1;
    }
    uint[] arr;
}
pragma solidity >=0.5.0 <0.8.0;

pragma solidity >=0.5.0 <0.8.0;
contract Test45 {
    mapping(uint => bool) used;
    struct KeyType {
        uint arr;
    }
    mapping(KeyType => bool) usedMapping;
    function test() public {
        KeyType keyType = KeyType(0000001);
        if (used[keyType.arr]) {
            return;
        }
        usedMapping[keyType] = true;
        return;
    }
}

contract Test4 {
    function test() internal pure {
        function func() internal pure returns (uint) {
            return (uint(func)) - 1;
        }
        return (uint(func(func))));
    }
}
