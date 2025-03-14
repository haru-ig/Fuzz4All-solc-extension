pragma solidity ^0.8.0;
contract Contract20Mut{
    event Fulfilled(uint indexed value);
    uint8 public num;
    receive() external payable {
        payable(address(this)).transfer(msg.value);
        num += 1;
        emit Fulfilled(num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Contract20N{
    event Fulfilled(uint256 indexed value);
    uint256 public num;
    receive() external payable {
        (bool s,) = msg.sender.call{value:msg.value}("");
        if (s) {num += 1;}
        emit Fulfilled(num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}

pragma solidity ^0.8.0;
contract Contract21M2N{
    event Fulfilled();
    uint8 public num;
    uint num2;


    receive() external payable{
        if (msg.value == 0) {
            uint256 random = uint8(uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number))) / 0x10000));
            num2 = num + 1;
            emit Fulfilled();
            selfdestruct(address(this).balance);
        } else if (random == num2) {
            num2 -= 1;
            selfdestruct(address(this).balance);
        } else {
            uint random2 = uint8(uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp, block.number))) / 0x10);
            uint random3 = uint(keccak256(abi.encodePacked(msg.sender, block.difficulty, block.timestamp, block.number))) / (10 ** 6);
            uint256 random4 = uint256(keccak256(abi.encodePacked(msg.sender, block.difficulty, block.timestamp, block.number))) % (10 ** 6);
            if (random < random2 || random == random3) {
                num += 1;
                emit Ful
