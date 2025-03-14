pragma solidity ^0.8.0;
contract Example8FallbackModifier {
    modifier payableFallback(uint256 amount) {
        if (msg.value + amount > 0)  {
            assembly {
                mstore(0x40, amount)
            }
        }
        _;
    }
    function fallback() payableFallback(0) {
    }
}

pragma solidity ^0.8.0;

contract Example8Caller {
    uint[] public data;
    uint i;
    mapping(uint => uint256) public map;

    constructor() public {}


    function get() public returns (uint) {
        i = data.length;
        data.push(8);
        i = data.length;
        data.push(5);
        data.push(6);
        i = data.length;
        data.push(9);

        map[data.length] = 0;
        map[data.length + 1] = 0;

        return 1;
    }


    function put(uint amount, string memory s) public returns (uint) {
        i = data.length;
        i = data.length;
        data.push(amount + i);
        i = data.length;
        data.push(i + 1);
        data.push(uint(keccak256(abi.encode(s))));

        map[data.length] = 0;
        map[i] = 0;
        for (uint j = i + 2; j < data.length - 1; j++) {
            map[data[j]] = 0;
        }

        map[data.length - 1] = 1;
        map[i + 1] = 1;

        return amount + i;
    }


    function isPrime(uint x) public returns (bool) {
        for (uint j = 3; j < x; j += 2) {
            if (x % j == 0) return false;
