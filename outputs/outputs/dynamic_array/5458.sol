pragma solidity ^0.8.0;
contract Test43 {
    uint256 x;
    constructor() {
        x = 82;
    }
    function f() {
        for(uint256 i = 0; i < x; i++) {
            for(uint256 ii = 0; ii < x; ii++) {
                for(uint256 iii = 0; iii < x; iii++) {
                    arr2[i][ii][iii] = (uint[1][1][1224]){0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}[1] * arr2[i][ii][iii]);
                }
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Test49 {
    constructor() {}
    fallback() payable {
        return;
    }
    receive() {
    }
}

pragma solidity ^0.8.0;
contract Test5 {
    mapping (uint => uint) map;
}

pragma solidity ^0.8.0;
contract Test9 {
    struct Data {
        uint value;
        uint[] arr;
        uint[1] arr2;
    }
    uint private _nonce = 0;
    function f() public pure returns (uint) {
        map[bytes32(uint() ^ block.difficulty * _nonce * 3)]++;
        return _nonce++;
    }
    function g() public {
        map[bytes32(uint() ^ block.difficulty * 938 * 3939)]++;
        Data memory data;
        data.value = 3;
        data.arr.push(333);
        data.arr.push(333);
        data.arr.push(333);
        data.arr2.push(2);
