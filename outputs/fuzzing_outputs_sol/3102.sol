pragma solidity ^0.8.0;
contract Example12Same {
    event Emitted(bytes32 indexed hash, uint256[] values1, bool flag, uint256 value2);
    constructor(uint256 x, uint256 y) {
        uint256[] memory array1 = new uint256[](20);
        for (uint i = 0; i < 20; i++) {
            array1[i] = x + y;
        }
        emit Emitted("hash", array1, true, 42);
    }
}
contract Example12S {
    event Emitted();
    constructor() {
        emit Emitted();
    }
}

pragma solidity ^0.8.0;
contract Example13Same {
    event Emitted(uint256 indexed hash);
    contract Example13Same2 {
        uint256 num;
        factory Example13Same2(uint256 _num) {
            num = _num;
        }
        receive() external payable {
           (uint256 _num,) = abi.decode(msg.data, (uint256));
           num = _num;
        }
        fallback() external payable {

        }
    }
    Example13Same2[] contracts;
    constructor() {
        contracts.push(new Example13Same2(13));
    }
    fallback() external payable {

    }
}
