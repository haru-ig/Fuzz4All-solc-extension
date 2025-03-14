pragma solidity ^0.8.0;
contract EtherFallback1 {
    uint storedValue;

    function test1() public returns (uint256) {
        return storedValue;
    }
    function test2() public payable returns (uint256) {
        storedValue += 1;
        return 2;
    }
}
contract EtherFallback2 {
    function test() public payable payable returns (uint) {
        require(msg.data.length >= 10, "Data must be larger than 10");
        uint value = msg.value;
        return value;
    }
}
contract CallERC20 {

    function transfer(address token, address to, uint256 tokenUnits) external returns (bool);
}
contract CallERC721 {

    function transferFrom(address token, address from, address to, uint256 tokenUnits) external returns (bool);
}
contract CallERC1155 {
    function balanceOf(address owner, uint256 tokenId, uint256 positionId) external view returns (uint256);
}
