pragma solidity ^0.8.0;
contract A {
    IERC1155Receiver internal i2 = msg.sender;
    function f() external payable returns (uint256 a) {
        uint256[] memory array = [1,2,3];
        IERC1155Receiver internal i3 = i2;
        i3.onERC1155Received(i2, address(0), 1, 2, bytes(array));

        return (uint256(array.length));
    }
}
contract B is A {
}
