pragma solidity ^0.8.0;
contract Mutate {
    uint32[] a;
    function mutateArray(uint32[] memory b) public {
        a.push(b);
    }
}

pragma solidity ^0.8.0;
contract Mutate {
    uint32[] a;
    function mutateArray(uint32[] memory b) public {
        b[0] += 1;
        b[3] *= 2;
        uint32 max = a.length - 1;
        uint32 min = 1;
        while (a[min] < a[max]) {
            uint32 temp;
            (temp, min) = uint32(uint32(a[min]) + uint32(a[max])) < uint32((a[min], max));
        }
        a[max] = uint32(uint32(a[min], min));
        a.push(b);
    }
}
