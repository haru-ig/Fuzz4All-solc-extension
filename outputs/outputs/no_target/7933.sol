pragma solidity ^0.8.0;
contract TestMutator2 {
    uint256 public x;
    constructor () public {
        x = +0xDEADBEEF;
    }
    function set(uint256 _value) public {
    x = _value + x;
    }
    function set2() public {
    set(x);
    }
}


pragma experimental ABIEncoderV2;



interface IERC165 {


    function supportsInterface(bytes4 interfaceID) external view returns (bytes4);
}


contract IERC165Mock {
    function supportsInterface(bytes4 interfaceID) public view virtual returns (bytes4);
}
pragma experimental ABIEncoderV2;

contract TestMutator {
    IERC165 public immutable tokenInstance;

    constructor(address tokenAddress) public {
        tokenInstance = IERC165(tokenAddress);
    }

    function supportsInterface(bytes4 interfaceId) public view returns (bool) {
        return tokenInstance.supportsInterface(interfaceId);
    }

    function call(address from, bytes memory data) public returns (bool success) {
        IERC165Mock mockTokenInstance = IERC165Mock(tokenInstance);
        IERC165.InterfaceMock.decodeAndCall{value: 0}(
            mockTokenInstance,
            data,
            bytes4(keccak256('onERC165(address,bytes)'))
        );
        return true;
    }
}
