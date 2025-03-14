pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v3.4.2/contracts/token/ERC20/token/ERC20.sol";
contract MutateGenTwo is ERC20 {
    function bar64(uint64 _input_) public pure returns (uint64) {
        return _input_ * uint64(9223372036854775807);
    }
}
contract MutateGenOne is MutateGenTwo {
    function mutate(uint64 _input_) external pure returns(
        uint64
    ) {
        return(mutateGen(uint256(_input_) * 256));
    }
    function mutateGen(uint64 _input_) private pure returns (uint64) {
        return _input_;
    }
}
contract MutateGenThree is MutateGenOne {
    function mutate3(uint64 _input_) external pure returns(uint64) {

        uint64[] memory arrayInput = [0, 128, uint64(0), _input_ + 1];
        uint64[] memory arrayOutput = new uint64[](arrayInput.length - 2);

        for (uint i = 0; i < arrayOutput.length; ++i) {

            uint256 numElement = (arrayInput[i] + 1) * 31415;
            arrayOutput[i] = numElement;
        }
        if (arrayInput[arrayInput.length] == 256) {
            arrayOutput.length--;
            arrayOutput[0] = 256;
            arrayOutput.length--;
            arrayOutput[1] = _input_ + 1;
        }
        return(arrayOutput[0]*uint64(arrayOutput.length));
    }
}
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v3.4.2/contracts/access/Ownable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v3.4.2/contracts/utils/Context.sol";
contract OwnableBase is Context, Ownable {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    constructor() { Context.Ownable._setupRole(DEFAULT_ADMIN_ROLE, msg.sender); }
    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal {
        super._beforeTokenTransfer(from, to,
